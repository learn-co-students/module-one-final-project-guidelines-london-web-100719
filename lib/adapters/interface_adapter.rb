require 'pry'
require "tty-prompt"
require "tty-reader"


@prompt = TTY::Prompt.new
@reader = TTY::Reader.new

@splash_box = TTY::Box.frame(
    " ______   _______  ___      ___   __   __  _______  ______    __   __  __   __ ",
    "|██████| |███████||███|    |███| |██| |██||███████||██████|  |██| |██||██| |██|",
    "|███████||███████||███|    |███| |██|_|██||███████||███| █|  |██| |██||██| |██|",
    "|█| |███||███|___ |███|    |███| |███████||███|___ |███|_█|_ |██|_|██||██|_|██|",
    "|█|_|███||███████||███|___ |███| |███████||███████||████████||███████||███████|",
    "|███████||███|___ |███████||███|  |█████| |███|___ |███|  |█||███████||███████|",
    "|██████| |███████||███████||███|   |███|  |███████||███|  |█||███████||███████|",
    padding: 5,
    align: :center,
    width: TTY::Screen.width,
    height: 20,
    title: {top_left: ' DELIVERUU ', bottom_right: ' faster than DHL '},
    border: :thick
)

def splash_loading_bar(message, time)

    puts ""
    bar = TTY::ProgressBar.new("#{message} [:bar] :percent", total: time, width: TTY::Screen.width)
    time.times {bar.advance; sleep(0.07)}
    
end

def title

    puts `clear`
    print @splash_box
    puts ""
    
end

def splash

    title
    splash_loading_bar("Doing things and stuff", 60)
    app_launch_page

end

def app_launch_page
    @user = nil
    title

    user_choice = @prompt.select("Choose an option:") do |menu|

        menu.enum '.'
        menu.choice 'Log In', 1
        menu.choice 'Sign Up', 2

    end

    if user_choice == 1

        log_in_page

    elsif user_choice == 2

        sign_up_page

    end

end

def log_in_page

    title
    puts "Type 'home' at any point to return."
    puts ""
    username = @prompt.ask('What is your username?')
    user_real = User.all.find {|user| user.username == username}

    loop do

        if username == "home"

            return app_launch_page

        elsif !user_real
            
            title
            puts "Type 'home' at any point to return."
            puts ""
            username = @prompt.ask('That username doesn\'t exist. Please re-enter your username:')
            user_real = User.all.find {|user| user.username == username}

        else

            break
                
        end

    end

    title
    puts "Type 'home' at any point to return."
    puts ""
    puts "USERNAME: #{username}"
    puts ""
    password = @prompt.mask('What is your password?')

    loop do

        if password == "home"
                
            return app_launch_page
                
        elsif password != user_real.password

            title
            puts "Type 'home' at any point to return."
            puts ""
            puts "USERNAME: #{username}"
            puts ""
            password = @prompt.mask('Password incorrect. Please re-enter your password:')

        else

            break
                
        end

    end

    splash_loading_bar("Logging into the mainframe", 40)
    # binding.pry
    @user = User.find_by(username: username)
    homepage
        

end

def sign_up_page
    
    title

    puts "Type 'home' at any point to return."
    puts ""
    
    first_name = @prompt.ask('What is your first name?').tr( '^A-Za-z\-', '' )

    if first_name == "home"

        return app_launch_page
        
    end

    last_name = @prompt.ask('What is your last name?').tr( '^A-Za-z\-', '' )

    if last_name == "home"

        return app_launch_page
        
    end

    username = @prompt.ask('Please choose a username:')

    user_real = User.all.find {|user| user.username == username}

    user_real == nil ? user_real : user_real = user_real.username

    loop do

        if username == "home"

            return app_launch_page

        elsif user_real == username
            
            user_real = User.all.find {|user| user.username == username}.username
            username = @prompt.ask('That username is already in use! Enter a new one:')

        else

            break
                
        end

    end

    password = @prompt.mask('Please type in a password:')

    if password == "home"

        return app_launch_page
        
    end

    repeat_password = @prompt.mask('Please repeat your password:')

    loop do

        if repeat_password == "home"
                
            return app_launch_page
                
        elsif repeat_password != password

            repeat_password = @prompt.mask('The password doesn\'t match! Re-enter your password!')
            
        else

            break

        end

    end
    
    have_address = @prompt.yes?('Do you have your what3words address?')

    if !have_address

        puts ""
        puts "You'll be redirecred to the what3words website to find your address."
        puts "When you have it, please come back and enter it here."
        sleep(8)
        puts `open https://what3words.com/`
        sleep(2)

    end

    origin_address = @prompt.ask('What is your what3words address?').tr('/', '')

    if origin_address == "home"

        return app_launch_page
        
    end

    loop do

      if origin_address == "home"

        return app_launch_page

      elsif get_coordinates(origin_address) == "error"

        origin_address = @prompt.ask('Not a valid What3words address, enter again: ').tr('/', '')        

      else

          break
              
      end

  end


    h1 = {
        first_name: first_name,
        last_name: last_name,
        username: username,
        password: password,
        origin_address: origin_address}

    @user = User.create(h1)
    puts ""
    puts "Signed up successfully!"
    splash_loading_bar("Creating life", 50)
    homepage
    
end

def homepage

    title
    user_input = @prompt.select('Choose your option:') do |menu|
        menu.enum '.'
        menu.choice 'Create new delivery', 1
        menu.choice 'Check delivery details', 2 #, disabled: '(out of stock)'
        menu.choice 'Update delivery address', 3
        menu.choice 'Check past deliveries', 4
        menu.choice 'Cancel delivery', 5
        menu.choice 'Log out', 6

    end

    case user_input

    when 1

        new_delivery

    when 2

        delivery_status

    when 3

        update_delivery

    when 4

        past_deliveries

    when 5

        cancel_delivery

    else

        app_launch_page

    end

end

# def new_delivery


#     des = Destination.find_or_create_by({name: name, destination_address: destination})
#     @user.destinations << des

#     del = Delivery.all.last

#     def fill_del_details(user_input, del, description)

#         del.description = description
#         del.status = "in transit"
#         del.speed = speed_option(user_input)[:type]
#         del.distance = get_distance_between(@user.origin_address, del.destination.destination_address)
#         del.cost = (del.distance * speed_option(user_input)[:cost_mult]).round(2)
        
#     end

#     fill_del_details(user_input, del, description)

#     def choice(del)

#         @prompt.yes?("At a delivery distance of #{del.distance}km, the price at this speed option is £#{del.cost} is that acceptable?")

#     end
    
#     fill_del_details(user_input, del, description)
  
#     loop do

#         if choice(del)
#             fill_del_details(user_input, del, description)
#             break

#         else

#             new_user_input = speed_prompt
#             fill_del_details(new_user_input, del, description)

#             if new_user_input == 4
                
#                 Delivery.all.last.destroy
#                 binding.pry
#                 break homepage
                
#             end
            
#         end
        
#     end
    
#     # del.save
  
#     puts ""
#     puts "Your delivery is pending, please wait."
#     sleep(3)
#     splash_loading_bar("A courier is breaking into your house", 40)
#     puts ""
#     puts "The courier has the goodies!"
#     sleep(3)
#     splash_loading_bar("Pre-damaging your shipment", 40)
#     puts ""
#     puts "Your delivery is on its way!"
#     sleep(4)
#     homepage
    
  
# end

def new_delivery

    title
    puts "Type 'back' at any point to return or restart."
    puts ""

    name = @prompt.ask('Who are you sending your package to?')
    homepage if name == "back"
    destination = @prompt.ask('What is the What3words address that you are sending it to?')
    homepage if destination == "back"
    description = @prompt.ask('Type a short description of the contents of your delivery:')
    homepage if description == "back"

    def speed_prompt

        @prompt.select('Choose your speed option:') do |menu|
            
            menu.enum '.'
            menu.choice 'Standard', 1
            menu.choice 'Express', 2 #, disabled: '(out of stock)'
            menu.choice 'Lightning', 3
            menu.choice 'Cancel new delivery', 4
            
        end
        
    end

    user_input = speed_prompt

    return homepage if user_input == 4

    destination_instance = Destination.find_or_create_by({name: name, destination_address: destination})
    
    @user.destinations << destination_instance
    created_delivery = Delivery.all.last

    created_delivery.status = "in transit"
    created_delivery.description = description
    created_delivery.distance = get_distance_between(@user.origin_address, created_delivery.destination.destination_address)
    created_delivery.cost = (created_delivery.distance * speed_option(user_input)[:cost_mult]).round(2)

    loop do

        response = @prompt.yes?("At a delivery distance of #{created_delivery.distance}km, the price at this speed option is £#{created_delivery.cost} is that acceptable?")

        if response

            
            break
            
        else
            new_input = speed_prompt

            if new_input == 4

                Delivery.all.last.destroy
                break homepage
                
            end

            created_delivery.speed = speed_option(new_input)[:type]
            
        end
        
    end

    puts ""
    puts "Your delivery is pending, please wait."
    sleep(3)
    splash_loading_bar("A courier is breaking into your house", 40)
    puts ""
    puts "The courier has the goodies!"
    sleep(3)
    splash_loading_bar("Pre-damaging your shipment", 40)
    puts ""
    puts "Your delivery is on its way!"
    sleep(4)
    homepage

end

def delivery_status

    title
    deliveries_array = Delivery.all.where(user_id: @user.id)

    formatted_deliveries = deliveries_array.map do |element|
    
        "Delivery to: #{element.destination.name} at #{element.destination.destination_address} - id: #{element.id}"

    end

    chosen_delivery = @prompt.select("Select a delivery (use arrow keys and Enter)") do |menu|
    
        menu.per_page 7
        menu.help ''
        menu.enum '.'
        menu.choices formatted_deliveries
    
    end
    
    delivery_id = chosen_delivery.split("id: ")[-1].to_i
    delivery = Delivery.find_by(id: delivery_id)
    puts ""
    puts "Your delivery is #{delivery.status}."
    puts "ETA: #{delivery.status == "delivered" ? 'N/A' : 'whatever function'}" #{convert_to_readable_time(Time.now.utc, delivery.created_on)}"
    puts "Cost: $#{delivery.cost}"
    puts "Initialized on: #{delivery.created_at}"
    puts "Contents: #{delivery.description}"
    puts ""
    # puts "Recepient: #{delivery.destination.name}"
    # puts "Recepient address: #{delivery.destination.destination_address}"
    sleep(3)
    user_input = @prompt.select('Would you like to:') do |menu|
        menu.enum '.'
        menu.choice 'go to your homepage', 1
        menu.choice 'go back to the list of deliveries', 2
        menu.choice 'log off', 3

    end

    case user_input

    when 1

        homepage

    when 2

        delivery_status

    else

        app_launch_page

    end
    homepage

end

def update_delivery



end

def past_deliveries

    @user.deliveries.select {|d| d.status == "delivered"}

end

def cancel_delivery


    
end
