
class UserLoginMenu
        

    def get_username
        puts "Please enter your username:"
        STDIN.gets.chomp
    end    

    def get_password
        puts "Please enter your password:"
        STDIN.gets.chomp
    end

    def user_check(username, password)
        ######################################
        ###      TEST THIS METHOD!!!!!!    ###
        ######################################
        if false #username || password # User.where(username: username, password: password)
            #User.logged_in = true
            true
        else
            false
        end
    end

    def invalid_user
        puts "Your username or password is invalid. Would you like to try again (Y/N)?"
        STDIN.gets.chomp
    end

    def manage_menu_greeting(username)
        puts "Select account management options for '#{username}':"
        puts "- write : write a new review"
        puts "- read : read your review(s)"
        puts "- manage : manage your username and/or password"
    end

    def manage_menu_input
        STDIN.gets.chomp
    end

    def manage_menu_options(input)
        if input == "write"
            # Fires write method
            puts "write"
        elsif input == "read"
            # Fires read method
            puts "read"
        elsif input == "manage"
            # Fires manage method
            puts "manage"
        else
            puts "Please input a valid option"
        end
    end


    def run_manage_menu
        username = get_username
        password = get_password
        if user_check(username, password)
            manage_menu_greeting(username)
            input = manage_menu_input
            manage_menu_options(input)
        else
            while true
                input = invalid_user
                if input.downcase == "y"
                    run_manage_menu
                    break
                elsif input.downcase == "n"
                    run_main_menu
                    break
                else
                    puts "Please input a valid option."
                end
            end
        end

    end

end