class CreateMerchants < ActiveRecord::Migration
  def self.up
    create_table :merchants do |t|
      t.string :name
      t.string :byline
      t.string :category
      t.string :description
      t.string :phone
      t.string :website
      t.string :email
      t.string :addressStreet1
      t.string :addressStreet2
      t.string :addressCity
      t.string :addressState
      t.integer :addressZip5
      t.integer :addressZip4

      t.timestamps
    end
  end

  def self.down
    drop_table :merchants
  end
end
