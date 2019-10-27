class UserManageReviews
    def read_own_greeting
        puts "Please select an option from below:"
        puts "- read : read all reviews you have previously submitted"
        puts "- update : update the content of a review"
        puts " - delete : delete a review"
        puts "- exit : return to user menu"
    end

    def get_read_own_menu_input
        STDIN.gets.chomp
    end
    
    def read_own_menu_options(input)
        if input == "read"
            # Fires read_own method
            read_own
        elsif input == "update"
            # Fires update_own method
            update_own
        elsif input == "delete"
            # Fires delete_own method
            delete_own
        elsif input == "exit"
            # Fires exit method
            exit
        else
            invalid_input
        end
    end

    def run_read_own_menu
        read_own_greeting
        input = get_read_own_menu_input
        read_own_menu_options(input)
    end

    def read_own
        # Display the school, course, rating and content or each own review
    end

    def get_update_own_menu_input
        STDIN.gets.chomp
    end

    def get_updated_content
        STDIN.gets.chomp
    end

    def update_own
        puts "Please select the review number to update"
        input = get_update_own_menu_input
        puts input
        # Input will enable selection of the appropriate review instance selected_review
        # selected_review = Review.where(##identifier:## input)
        puts "Now type your new review:"
        new_content = get_updated_content
        puts input
        # selected_review.update(content: new_content)
    end

    def get_delete_menu_input
        STDIN.gets.chomp
    end

    def delete_own
        puts "Please select a review to delete"
        input = get_delete_menu_input
        puts input
        # Input will enable selection of the appropriate review instance selected_review
        # selected_review = Review.where(##identifier:## input)
        # selected_review.destroy
    end

    def exit
        run_main_menu
    end
end
