class CreateDescriptions < ActiveRecord::Migration
  def self.up
    create_table :descriptions do |t|
      t.integer :id
      t.integer :subject
      t.text :description
      t.integer :author

      t.timestamps
    end
  end

  def self.down
    drop_table :descriptions
  end
end
