class CreateSubscriptions < ActiveRecord::Migration[6.1]
  def change
    create_table :subscriptions do |t|
      t.integer :user_id
      t.integer :time
      t.boolean :is_active?, :default => false
      t.timestamps
    end
  end
end
