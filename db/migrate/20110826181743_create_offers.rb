class CreateOffers < ActiveRecord::Migration
  def self.up
    create_table :offers do |t|
      t.integer :merchant_id
      t.string :mode
      t.string :title
      t.string :byline
      t.string :category
      t.string :description
      t.string :terms
      t.string :retailPrice
      t.string :discountPrice
      t.string :discountPercent
      t.string :discountValue
      t.date :start
      t.date :end
      t.integer :numberOffered
      t.boolean :validationRequired
      t.integer :stampsRequired

      t.timestamps
    end
  end

  def self.down
    drop_table :offers
  end
end
