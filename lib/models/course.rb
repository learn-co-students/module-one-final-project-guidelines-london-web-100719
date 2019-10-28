class Course < ActiveRecord::Base
    has_many :reviews
    has_many :schools, through: :reviews
    has_many :users, through: :reviews
end