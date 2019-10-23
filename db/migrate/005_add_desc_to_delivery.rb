class AddDescToDelivery < ActiveRecord::Migration[5.2]

  def change
    add_column(:deliveries, :description, :string)
  end

end