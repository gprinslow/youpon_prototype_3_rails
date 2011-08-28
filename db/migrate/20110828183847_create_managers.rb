class CreateManagers < ActiveRecord::Migration
  def self.up
    create_table :managers do |t|
      t.integer :employee_id

      t.timestamps
    end
  end

  def self.down
    drop_table :managers
  end
end
