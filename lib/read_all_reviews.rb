
class ReadAllReviews
    # include SchoolTopicFormatSelection

    ### TESTING BELOW ###

    def invalid_input
        puts "Your input is invalid. Please try again."
    end

    def school_menu
        puts "Choose the school:"
        puts "- fs : Flatiron School"
        puts "- ga : General Assembly"
        puts "- ma : Makers Academy"
    end

    def get_school_input
        STDIN.gets.chomp
    end

    def return_school_id(school_name)
        @school = School.find_by(name: school_name)
        school.id
    end

    ### TESTING ABOVE ###

    def initial_menu
        puts "Please select a viewing method:"
        puts "- school : view by school" # if time, add course or format 
        puts "- rating : view by rating"
        puts "- keyword : search by keyword"
        puts "- exit : return to main menu"
    end

    def get_initial_input
        STDIN.gets.chomp
    end

    def search_again_or_exit
        puts "View more reviews? (Y/N)"
        input = STDIN.gets.chomp.downcase
        
        case input
        when "y"
            run_view_all
        when "n"
            run_main_menu
        else
            invalid_input
            search_again_or_exit
        end
    end

    def run_view_all
        initial_menu
        initial_input = get_initial_input.downcase
        
        case initial_input
        when "school"
            run_view_by_school

        when "rating"
            run_view_by_rating

        when "keyword"
            run_search_by_keyword

        when "exit"
            run_main_menu
        
        else
            invalid_input
            run_view_all
        end
    end
    
    # missing by course, by ratings (highest), by ratings (lowest)
    def run_view_by_school
        school_menu
        input = get_school_input.downcase

        case input
        when "fs"
            school_id = return_school_id("Flatiron School")
            reviews = Review.all.where(school_id: school_id)
            puts reviews
        when "ga"
            school_id = return_school_id("General Assembly")
            reviews = Review.all.where(school_id: school_id)
            puts reviews
        when "ma"
            school_id = return_school_id("Makers Academy")
            reviews = Review.all.where(school_id: school_id)
            puts reviews
        end
        search_again_or_exit
    end

    def view_by_rating_menu
        puts "Input rating to search"
        puts "- highest : view from highest to lowest rating"
        puts "- lowest : view from lowest to highest rating"
        puts "- top : show reviews with ratings 4 and 5"
    end 

    def get_rating_menu_input
        STDIN.gets.chomp
    end

    def run_view_by_rating
        view_by_rating_menu
        input = get_rating_menu_input.downcase
        
        case input 
        when "highest"
            puts Review.order(rating: :desc).limit(10)
        when "lowest"
            puts Review.order(rating: :asc).limit(10)
        when "top"
            puts Review.where("rating > ?", 3)
        else
            invalid_input
            run_view_by_rating
        end

        search_again_or_exit
    end

    def run_search_by_keyword
        puts "Input keyword to search:"
        keyword = STDIN.gets.chomp
        Review.all.select {|review| review.content.include?("#{keyword}")}
        
        search_again_or_exit
    end

end

# run_view_all