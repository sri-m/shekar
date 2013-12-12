class AddAgeToContacts < ActiveRecord::Migration
  def change
    add_column :contacts, :Age, :integer
  end
end
