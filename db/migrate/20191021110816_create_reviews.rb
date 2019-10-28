class CreateReviews < ActiveRecord::Migration[5.2]
  def change
      create_table :reviews do |t|
        t.integer :school_id
        t.integer :course_id
        t.integer :user_id
        t.integer :rating
        t.text :content
      end
  end
end
