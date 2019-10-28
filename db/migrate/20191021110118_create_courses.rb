class CreateCourses < ActiveRecord::Migration[5.2]
  def change
    create_table :courses do |t|
      t.string :topic
      t.boolean :is_online
      t.boolean :is_in_person
    end
  end
end
