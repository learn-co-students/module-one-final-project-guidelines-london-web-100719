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
        menu.choice 'Quit', 3

    end

    if user_choice == 1

        log_in_page

    elsif user_choice == 2

        sign_up_page

    else

        puts `echo -n -e "\033]0;My Window Name\007"`
        puts `osascript -e 'tell application "Terminal" to close (every window whose name contains "My Window Name")' &`

        # CODE USED FROM https://stackoverflow.com/revisions/27970527/1
        
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
    
    # have_address = @prompt.yes?('Do you have your what3words address?')
    puts "Do you have your what3words address? (y/n)"

    have_address = nil

    loop do 

        have_address = gets.chomp

        if have_address != "y" && have_address != "n"

            puts "Invalid input! Type y for yes, or n for no."
    
        else

            break
    
        end
        
    end


    if have_address == "n"

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

        retrieve_deliveries_by_args({user_id: @user.id}, user_input)

    when 3

        retrieve_deliveries_by_args({user_id: @user.id}, user_input)

    when 4

        retrieve_deliveries_by_args({user_id: @user.id, status: "delivered"}, user_input)
        # had a function called past_deliveries basically the same as delivery_status so I ended up changing delivery_status to retrieve_deliveries_by_args and calling it with either just the user id or the user id and delivered status

    when 5

        retrieve_deliveries_by_args({user_id: @user.id, status: "in transit"}, user_input)

    else

        app_launch_page

    end

end

def new_delivery

    title
    puts "Type 'home' at any point to return."
    puts ""

    name = @prompt.ask('Who are you sending your package to?')
    homepage if name == "home"

    destination = @prompt.ask('What is the What3words address that you are sending it to?')
    homepage if destination == "home"

    description = @prompt.ask('Type a short description of the contents of your delivery:')
    homepage if description == "home"

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

            created_delivery.save
            break
            
        else

            new_input = speed_prompt

            if new_input == 4

                Delivery.all.last.destroy
                break homepage
                
            end

            created_delivery.cost = (created_delivery.distance * speed_option(new_input)[:cost_mult]).round(2)
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
    puts "Returning to homepage..."
    sleep(2)
    homepage

end

def retrieve_deliveries_by_args(args, menu_option)

    title
    deliveries_array = Delivery.all.where(args)

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

    if menu_option != 5
        
        puts ""
        puts "Your delivery is #{delivery.status}."
        puts "ETA: #{delivery.status == "delivered" ? 'N/A' : 'whatever function'}" #{convert_to_readable_time(Time.now.utc, delivery.created_on)}"
        puts "Cost: £#{delivery.cost}"
        puts "Shipment method: #{delivery.speed}"
        puts "Initialized on: #{delivery.created_at}"
        puts "Contents: #{delivery.description}"
        puts ""
        # puts "Recepient: #{delivery.destination.name}"
        # puts "Recepient address: #{delivery.destination.destination_address}"
        sleep(3)

    else

        puts ""

    end

    delivery_options_menu(args, menu_option)

end

def delivery_options_menu(args, menu_option_choice)

    menu_options = choose_menu_options(menu_option_choice)

    user_input = @prompt.select('Would you like to:', menu_options)[0].to_i

    # user_input = @prompt.select('Would you like to:') do |menu|

    #     menu.enum '.'
    #     menu.choice 'go to your homepage', 1
    #     menu.choice 'go back to the list of deliveries', 2
    #     menu.choice 'log off', 3

    # end
    case user_input

    when 1

        homepage

    when 2


        retrieve_deliveries_by_args(args, menu_option_choice)

    else

        app_launch_page

    end
    
end