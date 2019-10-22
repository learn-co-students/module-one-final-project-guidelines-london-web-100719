def splash

    title
    splash_loading_bar("Doing things and stuff", 60)
    app_launch_page
end

def app_launch_page

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

    # reader.on(:keyescape) do app_launch_page end
    @reader.on(:keyctrl_q) do
        return
    end
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
            username = wrong_username
            user_real = User.all.find {|user| user.username == username}

        else

            break
                
        end

    end

    title
    puts ""
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
            puts ""
            puts "Type 'home' at any point to return."
            puts ""
            puts "USERNAME: #{username}"
            puts ""
            password = wrong_password

        else

            break
                
        end

    end

    splash_loading_bar("Logging into the mainframe", 40)

    homepage
        

end

def wrong_username

    @prompt.ask('That username doesn\'t exist. Please re-enter your username:')
    
end

def wrong_password

    @prompt.mask('Password incorrect. Please re-enter your password:')
    
end

def sign_up_page

    title
    
end

def homepage

    "noice"
    
end