class User < ActiveRecord::Base
    has_many :reviews
    has_many :schools, through: :reviews
    has_many :courses, through: :reviews
end