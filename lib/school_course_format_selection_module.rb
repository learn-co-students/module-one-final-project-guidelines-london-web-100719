module SchoolCourseFormatSelection

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
        school = School.find_by(name: "#{school_name}")
        school.id
    end

    def course_menu
        puts "Choose the course:"
        puts "- cs : cybersecurity"
        puts "- ds : data science"
        puts "- se : software engineering"
        puts "- ux : user experience"
    end

    def get_course_input
        STDIN.gets.chomp
    end

    def return_course_id(course_name)
        course = Course.find_by(name: "#{course_name}")
        course.id
    end

    def format_menu
        puts "Choose the course format:"
        puts "- in-person : course delivered in-person"
        puts "- online : course delivered online"
    end

    def get_format_input
        STDIN.gets.chomp
    end

    def invalid_input
        puts "Your input is invalid. Please try again."
    end

end