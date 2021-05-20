class CreateReviews < ActiveRecord::Migration[6.1]
  def change
    create_table :reviews do |t|
      t.integer :subscription_id
      t.integer :user_id
      t.integer :rating
      t.timestamps
    end
  end
end
