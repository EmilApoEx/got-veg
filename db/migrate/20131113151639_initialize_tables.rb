class InitializeTables < ActiveRecord::Migration
  def self.up
    create_table :gurus do |t|
      t.string :name,        :null => false, :unique => true
      t.string :picture_url, :null => false, :unique => true
    end
    create_table :grades do |t|
      t.string  :color,   :null => false
      t.integer :food_id, :null => false
      t.integer :guru_id, :null => false
    end
    create_table :foods do |t|
      t.string :name, :null => false, :unique => true
      t.string :unit, :null => false
    end
    create_table :food_amounts do |t|
      t.float   :quantity, :null => false, :default => false 
      t.integer :food_id,  :null => false
      t.timestamps
    end
  end
  
  def self.down
    drop_table :gurus 
    drop_table :grades
    drop_table :foods 
    drop_table :food_amounts 
  end
end
