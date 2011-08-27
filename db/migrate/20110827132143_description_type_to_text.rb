class DescriptionTypeToText < ActiveRecord::Migration
  def self.up
    add_column :describes, :describe, :text
  end

  def self.down
    remove_column :describes, :description
  end
end
