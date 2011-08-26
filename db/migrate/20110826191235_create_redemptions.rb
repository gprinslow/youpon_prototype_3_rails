class CreateRedemptions < ActiveRecord::Migration
  def self.up
    create_table :redemptions do |t|
      t.integer :offer_id
      t.integer :user_id
      t.integer :status

      t.timestamps
    end
  end

  def self.down
    drop_table :redemptions
  end
end
