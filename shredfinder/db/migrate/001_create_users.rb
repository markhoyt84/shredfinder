class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      table.string :email, :name, :username, :picture, :fb_id, :city, :state, :style
      table.text :bio
      table.integer :age

      t.timestamps
    end
  end
end
