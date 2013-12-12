class RenameCell < ActiveRecord::Migration
  def self.up
    rename_column :contacts, :cell, :phone
  end

  def self.down
    rename_column :contacts, :cell, :phone
  end
end
