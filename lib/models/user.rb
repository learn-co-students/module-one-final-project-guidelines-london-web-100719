class User < ActiveRecord::Base

  def self.update_blank_passwords
    var = self.where("password = ''")
    var.each do |user|
      user.update({password: "pass"})
    end
  end


end
