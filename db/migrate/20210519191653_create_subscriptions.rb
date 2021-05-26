class CreateSubscriptions < ActiveRecord::Migration[6.1]
  def change
    create_table :subscriptions do |t|
      t.integer :user_id
      t.integer :time
      t.datetime :current_period_start, null: false
      t.datetime :current_period_end, null: false
      t.text :status
      t.timestamps
    end
  end
end
