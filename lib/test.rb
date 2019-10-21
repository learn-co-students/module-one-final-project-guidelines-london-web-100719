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

    20.times do

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
end