class User < ActiveRecord::Base

  has_many :deliveries
  has_many :destinations, through: :deliveries

  def self.update_blank_passwords
  
    var = self.where(password = "")

    var.each do |user|
      
      user.update({password: "pass"})

    end
    
  end

  def log_in(username)
    

  end

end

