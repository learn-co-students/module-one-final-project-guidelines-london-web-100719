class Cli
    def initialize
        @user = nil
    end

    def login(username)
        @user = User.find_by_username(username)
    end

    def run
        input = greet
        login(input)
        menu
    end


    def greet
        puts "hellp, whats your username?"
        gets.chomp
    end
end