class CreateSpots < ActiveRecord::Migration
  def change
    create_table :spots do |t|
      t.string :name, :address, :city, :state, :description, :feature
      t.float :latitude, :longitude
      t.references :user

      t.timestamps
    end
  end
end
