
def blank_screen

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
    puts "█                                                  █"
    puts "█                                                  █"
    puts "█                                                  █"
    puts "████████████████████████████████████████████████████"
    puts ""
    
end # DONE

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
        puts "█               X                                  █"
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
        puts "█               X                                  █"
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
        puts "█               *                                  █"
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
    
end # DONE

def homepage

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
        puts "█                                                  █"
        puts "█         1. Make a new delivery.                  █"
        puts "█         2. Check delivery status.                █"
        puts "█         3. See past deliveries.                  █"
        puts "█         4. Update delivery details.              █"
        puts "█         5. Cancel a delivery.                    █"
        puts "█                                                  █"
        puts "█                                                  █"
        puts "█                                                  █"
        puts "████████████████████████████████████████████████████"
        puts "█                                                  █"
        puts @success_line
        puts "█                                                  █"
        puts "████████████████████████████████████████████████████"
        puts ""
        
    end
    text
    puts "Enter the corresponding number:"
    user_input = gets.chomp

    case user_input

    when "1"
        @success_line = "█       Assembling delivery drone.                 █"
        text
        sleep(0.8)
        @success_line = "█       Assembling delivery drone..                █"
        text
        sleep(0.8)
        @success_line = "█       Assembling delivery drone...               █"
        text
        sleep(0.8)
        new_delivery
        
    when "2"
        @success_line = "█       Looking through billions of deliveries.    █"
        text
        sleep(0.8)
        @success_line = "█       Looking through billions of deliveries..   █"
        text
        sleep(0.8)
        @success_line = "█       Looking through billions of deliveries...  █"
        text
        sleep(0.8)
        delivery_status
        
    when "3"
        @success_line = "█       Turning back the time.                     █"
        text
        sleep(0.8)
        @success_line = "█       Turning back the time..                    █"
        text
        sleep(0.8)
        @success_line = "█       Turning back the time...                   █"
        text
        sleep(0.8)
        past_deliveries
        
    when "4"
        @success_line = "█       Assembling delivery drone.                 █"
        text
        sleep(0.8)
        @success_line = "█       Assembling delivery drone..                █"
        text
        sleep(0.8)
        @success_line = "█       Assembling delivery drone...               █"
        text
        sleep(0.8)
        update_delivery
        
    when "5"
        @success_line = "█       Assembling delivery drone.                 █"
        text
        sleep(0.8)
        @success_line = "█       Assembling delivery drone..                █"
        text
        sleep(0.8)
        @success_line = "█       Assembling delivery drone...               █"
        text
        sleep(0.8)
        cancel_delivery
        
    else

        puts "Please enter a valid option from 1 to 5"
        user_input = gets.chomp
        
    end
    
end

def new_delivery

    @recepient_name = "█        ...........................               █"
    @recepient_address = "█        ...........................               █"

    def ui

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
        puts "█        1. RECEPIENT NAME:                        █"
        puts "█                                                  █"
        puts @recepient_name
        puts "█                                                  █"
        puts "█        1. RECEPIENT ADDRESS:                     █"
        puts "█                                                  █"
        puts @recepient_address
        puts "█                                                  █"
        puts "█                                                  █"
        puts "████████████████████████████████████████████████████"
        puts "█                                                  █"
        puts "█                                                  █"
        puts "█                                                  █"
        puts "████████████████████████████████████████████████████"
        puts ""
        
    end
    
    def name

        puts "Please enter the recepient name:"
        @user_input = gets.chomp
        @dots = ""
        (27 - @user_input.length).times do @dots += "." end
        @recepient_name = "█        " + @user_input + @dots + "               █"
        ui
        
    end

    def address

        puts "Please enter the recepient address:"
        @user_input = gets.chomp
        @dots = ""
        (27 - @user_input.length).times do @dots += "." end
        @recepient_address = "█        " + @user_input + @dots + "               █"
        ui
        
    end

    def run

        ui
        name
        address
        
    end

    run

end # UNFINISHED

def delivery_status

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
    puts "█                                                  █"
    puts "█                                                  █"
    puts "█                                                  █"
    puts "████████████████████████████████████████████████████"
    puts ""
    
end #UNFINISHED

def past_deliveries

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
    puts "█                                                  █"
    puts "█                                                  █"
    puts "█                                                  █"
    puts "████████████████████████████████████████████████████"
    puts ""
    
end #UNFINISHED

def update_delivery

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
    puts "█                                                  █"
    puts "█                                                  █"
    puts "█                                                  █"
    puts "████████████████████████████████████████████████████"
    puts ""
    
end #UNFINISHED

def cancel_delivery

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
    puts "█                                                  █"
    puts "█                                                  █"
    puts "█                                                  █"
    puts "████████████████████████████████████████████████████"
    puts ""
    
end #UNFINISHED

def launch_page

    @success_line = "█                                                  █"

    def ui

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
        puts "█                                                  █"
        puts @success_line
        puts "█                                                  █"
        puts "████████████████████████████████████████████████████"
        puts ""
        
    end
    ui
    puts "Please enter the corresponding number:"
    user_input = gets.chomp

    def success

        @success_line = "█        Hacking into mainframe.                   █"
        ui
        sleep(0.8)
        @success_line = "█        Hacking into mainframe..                  █"
        ui
        sleep(0.8)
        @success_line = "█        Hacking into mainframe...                 █"
        ui
        sleep(0.8)
        
    end

    if user_input == "1"
        
        success
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
        puts "█                                                  █"
        puts "#{@username_line}"
        puts "█                                                  █"
        puts "█                                                  █"
        puts "#{@password_line}"
        puts "█                                                  █"
        puts "█                                                  █"
        puts "█                                                  █"
        puts "█                                                  █"
        puts "████████████████████████████████████████████████████"
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
        sleep(1.1)
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