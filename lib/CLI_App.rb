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
    title: {top_left: ' DELIVERUU ', bottom_right: ' faster than DHL ', top_right: ' built by Niki Nedelchev & Alex Shomalistos '},
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

def homepage

    title
    user_input = @prompt.select('Choose your option:') do |menu|
        menu.enum '.'
        menu.choice 'Create new delivery', 1
        menu.choice 'Check current deliveries', 2 #, disabled: '(out of stock)'
        menu.choice 'Update delivery address', 3
        menu.choice 'Check past deliveries', 4
        menu.choice 'Cancel delivery', 5
        menu.choice 'Log out', 6

    end

    case user_input

    when 1

        new_delivery

    when 2

        retrieve_deliveries_by_args({user_id: @user.id, status: "in transit"}, user_input)

    when 3

        retrieve_deliveries_by_args({user_id: @user.id, status: "in transit"}, user_input)

    when 4

        retrieve_deliveries_by_args({user_id: @user.id, status: "delivered"}, user_input)
        # had a function called past_deliveries basically the same as delivery_status so I ended up changing delivery_status to retrieve_deliveries_by_args and calling it with either just the user id or the user id and delivered status

    when 5

        retrieve_deliveries_by_args({user_id: @user.id, status: "in transit"}, user_input)

    else

        app_launch_page

    end

end

def app

    title
    splash_loading_bar("Doing things and stuff", 60)
    app_launch_page

end