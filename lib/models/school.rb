class School < ActiveRecord::Base
    has_many :reviews
    has_many :courses, through: :reviews
    has_many :users, through: :reviews
end