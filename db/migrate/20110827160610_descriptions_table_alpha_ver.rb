class DescriptionsTableAlphaVer < ActiveRecord::Migration
  def self.up
    change_column :descriptions, :subject, :string
    change_column :descriptions, :author, :string
  end

  def self.down
  end
end
