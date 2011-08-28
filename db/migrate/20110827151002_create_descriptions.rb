class CreateDescriptions < ActiveRecord::Migration
  def self.up
    create_table :descriptions do |t|
      t.integer :id
      t.integer :subject_id
      t.text :description
      t.integer :author_id

      t.timestamps
    end
  end

  def self.down
    drop_table :descriptions
  end
end
