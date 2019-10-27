class UserManageAccount
    def user_account_greeting
        puts "Please use the following options to change your username, or password or return to the main user menu"
        puts "- username : change your username"
        puts "- password : change your password"
        puts "- exit : return to user menu"
    end

    def get_user_account_menu_input
        STDIN.gets.chomp
    end

    def user_account_menu_options(input)
        if input == "username"
            # Fires change_username method
            change_username
        elsif input == "password"
            # Fires change_password method
            change_password
        elsif input == "exit"
            # Fires exit method
            exit
        else
            puts "Please input a valid option"
        end
    end

    def run_user_account_menu
        user_account_greeting
        input = get_user_account_menu_input
        user_account_menu_options(input)
    end

    def get_updated_username_input
        STDIN.gets.chomp
    end

    def change_username
        # TBD
        puts "Please enter your new username:"
        input = get_updated_username_input
        puts input
        # user.update(username: input)
    end

    def get_updated_password_input
        STDIN.gets.chomp
    end

    def change_password
        #TBD
        puts "Please enter your new password:"
        input = get_updated_password_input
        puts input
        # user.update(password: input)
    end

    def exit
        # TBD
        puts "Runs exit method to return to user menu"
    end

end