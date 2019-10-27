class UserWriteReview
    include SchoolCourseFormatSelection

    def initial_menu
        puts "Please choose one of the options:"
        puts "- school : select a school to review"
        puts "- exit : return to user menu"
    end

    def get_initial_input
        STDIN.gets.chomp
    end

    def get_rating
        puts "Give a rating, 1-5 (5 being the highest):"
        STDIN.gets.chomp
    end

    def get_content
        puts "Please type your review; press enter when complete:"
        STDIN.gets.chomp
    end

    def get_review_confirmation
        puts "Submit this review? (Y/N)"
        STDIN.gets.chomp
    end

    def invalid_input
        puts "Your input is invalid. Please try again."
    end

    def return_to_main_menu
        MainMenu.new.run_main_menu
    end

    def return_school_name(school_input)
        if school_input == "fs"
            "Flatiron School"
        elsif school_input == "ga"
            "General Assembly"
        elsif school_input == "ma"
            "Makers Academy"
        end
    end

    def return_course_name(course_input)
        if course_input == "cs"
            "Cybersecurity"
        elsif course_input == "ds"
            "Data Science"
        elsif course_input == "se"
            "Software Engineering"
        elsif course_input == "ux"
            "User Experience Design"
        end
    end

    def run_write_review_app
        initial_menu
        initial_input = get_initial_input.downcase
        if initial_input == "school"
            
            school_menu
            school_input = get_school_input.downcase
            if school_input == "fs" || school_input == "ga" || school_input == "ma"
                
                course_menu
                course_input = get_course_input.downcase
                if course_input == "cs" || course_input == "ds" || course_input == "se" || course_input == "ux"
                    
                    format_menu
                    format_input = get_format_input.downcase
                    if format_input = "in-person" || format_input == "online"

                        rating_input = get_rating # run a check
                        content_input = get_content # run a check
                        review_confirmation_input = get_review_confirmation.downcase
                        if review_confirmation_input == "y"

                            
                            school_id = return_school_id(return_school_name(school_input))

                            course_id = return_school_id(return_course_name(course_input))
                            
                            user = User.find_by(logged_in: true)
                            user_id = user.id

                            Review.new(school_id: school_id, course_id: course_id, user_id: user_id, rating: rating_input, content: content_input)

                        elsif review_confirmation_input == "n"
                            return_to_main_menu
                        else
                            invalid_input
                            run_write_review_app
                        end

                    else
                        invalid_input
                        run_write_review_app
                    end

                else
                    invalid_input
                    run_write_review_app
                end

            else
                invalid_input
                run_write_review_app
            end

        elsif initial_input.downcase == "exit"
            return_to_main_menu
        else
            invalid_input
            run_write_review_app
        end

    end
end
