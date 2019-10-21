def homepage

    puts `clear`
    puts "████████████████████████████████████████████████████"
    puts "█                                                  █"
    puts "█                     DELIVERUU                    █"
    puts "█                                                  █"
    puts "█                - cheaper than DHL -              █"
    puts "█                                                  █"
    puts "████████████████████████████████████████████████████"
    puts "█                                                  █"
    puts "█                                                  █"
    puts "████████████████████████████████████████████████████"
    puts "█                                                  █"
    puts "█                                                  █"
    puts "█                                                  █"
    puts "█   1. Make a new delivery.                        █"
    puts "█   2. Check delivery status.                      █"
    puts "█   3. See past deliveries.                        █"
    puts "█   4. Update delivery details.                    █"
    puts "█   5. Cancel a delivery.                          █"
    puts "█                                                  █"
    puts "█                                                  █"
    puts "█                                                  █"
    puts "████████████████████████████████████████████████████"
    puts ""
    puts "Enter the corresponding number:"
    user_input = gets.chomp
    
end

def blank_screen

    puts `clear`
    puts "████████████████████████████████████████████████████"
    puts "█                                                  █"
    puts "█                                                  █"
    puts "█                                                  █"
    puts "█                                                  █"
    puts "█                                                  █"
    puts "█                                                  █"
    puts "█                                                  █"
    puts "█                                                  █"
    puts "█                                                  █"
    puts "█                                                  █"
    puts "█                                                  █"
    puts "█                                                  █"
    puts "█                                                  █"
    puts "█                                                  █"
    puts "█                                                  █"
    puts "█                                                  █"
    puts "█                                                  █"
    puts "█                                                  █"
    puts "█                                                  █"
    puts "█                                                  █"
    puts "████████████████████████████████████████████████████"
    puts ""
    
end

def splash_screen

    def frame0
        puts `clear`
        puts "████████████████████████████████████████████████████"
        puts "█                   *                          .   █"
        puts "█     X                       X          *         █"
        puts "█                 X                                █"
        puts "█        X           .     X        X          X   █"
        puts "█               *                                  █"
        puts "█      X              X              *      .      █"
        puts "█                               .                  █"
        puts "█    ███   ███  █    █  █ █  ███  ██   █ █  █ █    █"
        puts "█    █  █  █    █    █  █ █  █    █ █  █ █  █ █    █"
        puts "█    █  █  ███  █    █  █ █  ███  ██   █ █  █ █    █"
        puts "█    █  █  █    █    █  █ █  █    █ █  █ █  █ █    █"
        puts "█    ███   ███  ███  █   █   ███  █ █  ███  ███    █"
        puts "█                           *                      █"
        puts "█      X          .                                █"
        puts "█                *                     X           █"
        puts "█                                             X    █"
        puts "█                         X                        █"
        puts "█     *        X         .            *            █"
        puts "█                                     .            █"
        puts "█         .                X                    *  █"
        puts "████████████████████████████████████████████████████"
    end
    def frame1
        puts `clear`
        puts "████████████████████████████████████████████████████"
        puts "█                   X               .              █"
        puts "█     *     .                 X          X         █"
        puts "█                 X                                █"
        puts "█        X                 *        X          *   █"
        puts "█               X                            .     █"
        puts "█      *              *              X             █"
        puts "█                                                  █"
        puts "█    ███   ███  █    █  █ █  ███  ██   █ █  █ █    █"
        puts "█    █  █  █    █    █  █ █  █    █ █  █ █  █ █    █"
        puts "█    █  █  ███  █    █  █ █  ███  ██   █ █  █ █    █"
        puts "█    █  █  █    █    █  █ █  █    █ █  █ █  █ █    █"
        puts "█    ███   ███  ███  █   █   ███  █ █  ███  ███    █"
        puts "█                           X                      █"
        puts "█      *                      .                    █"
        puts "█                *                     X           █"
        puts "█                                             X    █"
        puts "█                     .   *                        █"
        puts "█     X        X                      X      .     █"
        puts "█                                                  █"
        puts "█        .                 X                    *  █"
        puts "████████████████████████████████████████████████████"
    end
    def frame2
        puts `clear`
        puts "████████████████████████████████████████████████████"
        puts "█                   X                .             █"
        puts "█     *                   .   *          X         █"
        puts "█                 *                                █"
        puts "█        X                 X        X          *   █"
        puts "█           .   X                                  █"
        puts "█      *              X              X             █"
        puts "█                                                  █"
        puts "█    ███   ███  █    █  █ █  ███  ██   █ █  █ █    █"
        puts "█    █  █  █    █    █  █ █  █    █ █  █ █  █ █    █"
        puts "█    █  █  ███  █    █  █ █  ███  ██   █ █  █ █    █"
        puts "█    █  █  █    █    █  █ █  █    █ █  █ █  █ █    █"
        puts "█    ███   ███  ███  █   █   ███  █ █  ███  ███    █"
        puts "█                           X                      █"
        puts "█      *                                           █"
        puts "█                X             .       *           █"
        puts "█                                             X    █"
        puts "█                         X                        █"
        puts "█     X        *                      *            █"
        puts "█                                                  █"
        puts "█                          X                    *  █"
        puts "████████████████████████████████████████████████████"
    end

    10.times do

        frame0
        sleep(0.1)
        frame1
        sleep(0.1)
        frame2
        sleep(0.1)

    end
    
end

def new_delivery

    puts `clear`
    puts "████████████████████████████████████████████████████"
    puts "█                                                  █"
    puts "█                     DELIVERUU                    █"
    puts "█                                                  █"
    puts "█                - cheaper than DHL -              █"
    puts "█                                                  █"
    puts "████████████████████████████████████████████████████"
    puts "█                                                  █"
    puts "█                                                  █"
    puts "████████████████████████████████████████████████████"
    puts "█                                                  █"
    puts "█                                                  █"
    puts "█                                                  █"
    puts "█                                                  █"
    puts "█                                                  █"
    puts "█                                                  █"
    puts "█                                                  █"
    puts "█                                                  █"
    puts "█                                                  █"
    puts "█                                                  █"
    puts "█                                                  █"
    puts "████████████████████████████████████████████████████"
    puts ""
    puts "Please enter the "
end # UNFINISHED

def launch_page

    puts `clear`
    puts "████████████████████████████████████████████████████"
    puts "█                                                  █"
    puts "█                     DELIVERUU                    █"
    puts "█                                                  █"
    puts "█                - cheaper than DHL -              █"
    puts "█                                                  █"
    puts "████████████████████████████████████████████████████"
    puts "█                                                  █"
    puts "█                                                  █"
    puts "████████████████████████████████████████████████████"
    puts "█                                                  █"
    puts "█                                                  █"
    puts "█                                                  █"
    puts "█                                                  █"
    puts "█        1. LOG IN                                 █"
    puts "█                                                  █"
    puts "█        2. SIGN UP                                █"
    puts "█                                                  █"
    puts "█                                                  █"
    puts "█                                                  █"
    puts "█                                                  █"
    puts "████████████████████████████████████████████████████"
    puts ""
    puts "Please enter the corresponding number:"
    user_input = gets.chomp
    if user_input == "1"

        log_in_page
        
    elsif user_input == "2"

        puts "u entered 2"
        
    else

        raise "big oopsie"
        
    end
end

def log_in_page
    @username_line = "█         USERNAME:                                █"
    @password_line = "█         PASSWORD:                                █"
    @success_line = "█                                                  █"
    def text

        puts `clear`
        puts "████████████████████████████████████████████████████"
        puts "█                                                  █"
        puts "█                     DELIVERUU                    █"
        puts "█                                                  █"
        puts "█                - cheaper than DHL -              █"
        puts "█                                                  █"
        puts "████████████████████████████████████████████████████"
        puts "█                                                  █"
        puts "█                                                  █"
        puts "████████████████████████████████████████████████████"
        puts "█                                                  █"
        puts "█                                                  █"
        puts "█                                                  █"
        puts "#{@username_line}"
        puts "█                                                  █"
        puts "█                                                  █"
        puts "#{@password_line}"
        puts "█                                                  █"
        puts "█                                                  █"
        puts "#{@success_line}"
        puts "█                                                  █"
        puts "████████████████████████████████████████████████████"
        puts ""

        
    end

    def ask_username

        text
        puts "Please enter your username:"
    
        @user_name = gets.chomp
        # CHECK IF USER EXISTS
        # IF USER EXISTS
        @spaces = ""
        (31 - @user_name.length).times do @spaces += " " end
        @username_line = "█         USERNAME: " + @user_name + @spaces + "█"
        text
        
    end

    def ask_password
    
        puts "Please enter your password:"

        password = STDIN.noecho(&:gets).chomp

        @password_line = "█         PASSWORD: ********                       █"

        @success_line = "█         SUCCESS! LOGGING IN.                     █"
        text
        sleep(1.5)
        @success_line = "█         SUCCESS! LOGGING IN..                    █"
        text
        sleep(0.8)
        @success_line = "█         SUCCESS! LOGGING IN...                   █"
        text
        sleep(0.8)

        # puts `io.stdin.echoMode = false`
        # @user_password = gets.chomp
        # IF PASSWORD MATCHES THAT USERNAME, BRING UP THE HOMEPAGE
        # IF NOT THEN RE-PROMPT FOR PASSWORD AGAIN
        
    end

    ask_username
    ask_password
    # @success_line = "█      BIG OOPSIE! RE-ENTER YOUR PASSWORD!         █"
    # sleep(1)
    
end

def app

    splash_screen
    launch_page
    homepage
    
end