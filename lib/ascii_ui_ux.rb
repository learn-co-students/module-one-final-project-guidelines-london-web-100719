def blank_line

    puts "█                                                  █"
    
end

def solid_line

    puts "████████████████████████████████████████████████████"
    
end

def clear_screen

    puts `clear`
    
end

def blank_screen

    puts `clear`
    puts "████████████████████████████████████████████████████"
    blank_line
    puts "█                     DELIVERUU                    █"
    blank_line
    puts "█                - cheaper than DHL -              █"
    blank_line
    puts "████████████████████████████████████████████████████"
    blank_line
    blank_line
    blank_line
    blank_line
    blank_line
    blank_line
    blank_line
    blank_line
    blank_line
    blank_line
    blank_line
    puts "████████████████████████████████████████████████████"
    blank_line
    blank_line
    blank_line
    puts "████████████████████████████████████████████████████"
    puts ""
    
end # DONE

def title_bar

    clear_screen
    solid_line
    blank_line
    puts "█                     DELIVERUU                    █"
    blank_line
    puts "█                - cheaper than DHL -              █"
    blank_line
    solid_line
    blank_line
    
end # DONE

def status_bar(success_message = "█                                                  █")

    blank_line
    solid_line
    blank_line
    puts success_message
    blank_line
    solid_line
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
        blank_line
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
        blank_line
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
        blank_line
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
        blank_line
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

        title_bar
        blank_line
        blank_line
        puts "█         1. Make a new delivery.                  █"
        puts "█         2. Check delivery status.                █"
        puts "█         3. See past deliveries.                  █"
        puts "█         4. Update delivery details.              █"
        puts "█         5. Cancel a delivery.                    █"
        blank_line
        blank_line
        status_bar(@success_line)
        
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
    @success_line = "█                                                  █"
    
    def text

        title_bar
        blank_line
        puts "█        1. RECEPIENT NAME:                        █"
        blank_line
        puts @recepient_name
        blank_line
        puts "█        1. RECEPIENT ADDRESS:                     █"
        blank_line
        puts @recepient_address
        blank_line
        status_bar(@success_line)
        
    end
    
    def name

        puts "Please enter the recepient name:"
        @user_input = gets.chomp
        @dots = ""
        (27 - @user_input.length).times do @dots += "." end
        @recepient_name = "█        " + @user_input + @dots + "               █"
        text
        
    end

    def address

        puts "Please enter the recepient address:"
        @user_input = gets.chomp
        @dots = ""
        (27 - @user_input.length).times do @dots += "." end
        @recepient_address = "█        " + @user_input + @dots + "               █"
        text
        
    end

    def run

        text
        name
        address
        
    end

    run

end # UNFINISHED

def delivery_status

    def text

        title_bar
        blank_line
        blank_line
        blank_line
        blank_line
        blank_line
        blank_line
        blank_line
        blank_line
        blank_line
        status_bar
        
    end
    
end #UNFINISHED

def past_deliveries

    def text

        title_bar
        blank_line
        blank_line
        blank_line
        blank_line
        blank_line
        blank_line
        blank_line
        blank_line
        blank_line
        status_bar
        
    end
    
end #UNFINISHED

def update_delivery

    def text

        title_bar
        blank_line
        blank_line
        blank_line
        blank_line
        blank_line
        blank_line
        blank_line
        blank_line
        blank_line
        status_bar
        
    end
    
end #UNFINISHED

def cancel_delivery

    def text

        title_bar
        blank_line
        blank_line
        blank_line
        blank_line
        blank_line
        blank_line
        blank_line
        blank_line
        blank_line
        status_bar
        
    end
    
end #UNFINISHED

def launch_page

    @success_line = "█                                                  █"

    def text

        title_bar
        blank_line
        blank_line
        blank_line
        puts "█        1. LOG IN                                 █"
        blank_line
        puts "█        2. SIGN UP                                █"
        blank_line
        blank_line
        blank_line
        status_bar(@success_line)
        
    end
    text
    puts "Please enter the corresponding number:"
    user_input = gets.chomp

    def success_status

        @success_line = "█        Doing things and stuff.                   █"
        text
        sleep(0.8)
        @success_line = "█        Doing things and stuff..                  █"
        text
        sleep(0.8)
        @success_line = "█        Doing things and stuff...                 █"
        text
        sleep(0.8)
        
    end

    if user_input == "1"
        
        success_status
        log_in_page
        
    elsif user_input == "2"

        puts "u entered 2"
        
    else

        raise "big oopsie"
        
    end
end # UNFINISHED

def log_in_page
    @username_line = "█         USERNAME:                                █"
    @password_line = "█         PASSWORD:                                █"
    @success_line = "█                                                  █"
    def text

        title_bar
        blank_line
        blank_line
        puts "#{@username_line}"
        blank_line
        blank_line
        puts "#{@password_line}"
        blank_line
        blank_line
        blank_line
        status_bar(@success_line)

        
    end

    def ask_username

        text
        puts "Please enter your username:"
    
        @user_name = gets.chomp

        @user = User.all.find {|user| user.first_name == @user_name}
        binding.pry
        
        
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
    
end # UNFINISHED

def sign_up_page

    @success_line = "█                                                  █"

    def text

        title_bar
        blank_line
        blank_line
        puts
        blank_line
        blank_line
        puts "#{@password_line}"
        blank_line
        blank_line
        blank_line
        
    end
    
end

def app

    splash_screen
    launch_page
    homepage
    
end