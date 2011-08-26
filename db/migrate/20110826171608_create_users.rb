class CreateUsers < ActiveRecord::Migration
  def self.up
    create_table :users do |t|
      t.string :username
      t.string :email
      t.string :password
      t.string :nameFirst
      t.string :nameMiddle
      t.string :nameLast
      t.date :birthday
      t.string :gender
      t.integer :zipCode

      t.timestamps
    end
  end

  def self.down
    drop_table :users
  end
end
