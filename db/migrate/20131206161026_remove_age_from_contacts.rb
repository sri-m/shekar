class RemoveAgeFromContacts < ActiveRecord::Migration
  def change
    remove_column :contacts, :age, :integer
  end
end
