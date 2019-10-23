class CreateTables < ActiveRecord::Migration[5.2]

    def change

        create_table(:users) do |t|

            t.string :username
            t.string :password
            t.string :first_name
            t.string :last_name
            t.string :origin_address
            
        end
        
        create_table(:destinations) do |t|

            t.string :name
            t.string :destination_address
            
        end
        
        create_table(:deliveries) do |t|

            t.integer :user_id
            t.integer :destination_id
            t.string :status
            t.string :description
            t.float :distance
            t.float :cost
            t.string :speed
            
            t.timestamps
            
        end
        
    end
    
end