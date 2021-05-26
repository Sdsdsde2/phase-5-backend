class CreateSubscriptions < ActiveRecord::Migration[6.1]
  def change
    create_table :subscriptions do |t|
      t.integer :user_id
      t.integer :day
      t.integer :hour
      t.integer :minute
      t.text :status
      t.timestamps
    end
  end
end
