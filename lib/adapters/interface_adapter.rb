require 'pry'
require "tty-prompt"
require "tty-reader"


@prompt = TTY::Prompt.new
@reader = TTY::Reader.new

@splash_box = TTY::Box.frame(
    " ______   _______  ___      ___   __   __  _______  ______    __   __  __   __ ",
    "|      | |       ||   |    |   | |  | |  ||       ||    _ |  |  | |  ||  | |  |",
    "|  _    ||    ___||   |    |   | |  |_|  ||    ___||   | ||  |  | |  ||  | |  |",
    "| | |   ||   |___ |   |    |   | |       ||   |___ |   |_||_ |  |_|  ||  |_|  |",
    "| |_|   ||    ___||   |___ |   | |       ||    ___||    __  ||       ||       |",
    "|       ||   |___ |       ||   |  |     | |   |___ |   |  | ||       ||       |",
    "|______| |_______||_______||___|   |___|  |_______||___|  |_||_______||_______|",
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

@user = nil

def splash

    title
    splash_loading_bar("Doing things and stuff", 60)
    # binding.pry
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
            username = @prompt.ask('That username doesn\'t exist. Please re-enter your username:')
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
    
end

def homepage
    puts @user
    binding.pry
    "noice"
end