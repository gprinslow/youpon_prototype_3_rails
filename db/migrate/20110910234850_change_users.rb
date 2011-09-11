class ChangeUsers < ActiveRecord::Migration
  def self.up
		rename_column :users, :nameFirst, :first_name
		rename_column :users, :nameMiddle, :middle_name
		rename_column :users, :nameLast, :last_name
		rename_column :users, :zipCode, :zip_code
  end

  def self.down
    rename_column :users, :zip_code, :zipCode
		rename_column :users, :last_name, :nameLast
		rename_column :users, :middle_name, :nameMiddle
		rename_column :users, :first_name, :nameFirst
  end
end