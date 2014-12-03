class CreateFollows < ActiveRecord::Migration
  def change
    create_table :follows do |t|
      t.references :follower, :followee

      t.timestamps
    end
  end
end
