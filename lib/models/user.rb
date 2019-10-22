class User < ActiveRecord::Base

    has_many :deliveries
    has_many :destinations, through: :deliveries

    def self.update_passwords_to_pass
    
        User.all.each do |user|
            
            user.update({password: "pass"})

        end
        
    end

    def self.update_usernames
    
        @arr = %w(chargerman terminator danK ned-el-ch ShomZy weworkbad admin hughmungus vegetable kernel)

        User.all.each_with_index do |user, index|
            
            user.update({username: "#{@arr[index]}"})

        end
        
    end

end
