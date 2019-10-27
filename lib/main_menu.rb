class MainMenu
    def greeting
        puts "========================================="
        puts "== Welcome to the Bootcamp Review app! =="
        puts "========================================="
        puts "Please select from the following:"
        puts "- read : read reviews"
        puts "- manage : create, read, update and delete your own reviews"    
    end

    def get_main_menu_input
        STDIN.gets.chomp
    end

    def main_menu_options(input)
        if input == "read"
            # Fires read method
            puts "read"
        elsif input == "manage"
            # Fires manage method
            puts "manage"
        else
            puts "Please input a valid option"
        end
    end

    def run_main_menu
        greeting
        input = get_main_menu_input
        main_menu_options(input)
    end

end