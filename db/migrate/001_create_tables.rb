class CreateTables < ActiveRecord::Migration[5.2]

    def change

        create_table(:users) do |t|

            t.string :first_name
            t.string :last_name
            t.string :origin_address
            
        end
        
        create_table(:destinations) do |t|

            t.string :destination_address
            
        end
        
        create_table(:deliveries) do |t|

            t.integer :user_id
            t.integer :destination_id
            
        end
        
    end
    
end