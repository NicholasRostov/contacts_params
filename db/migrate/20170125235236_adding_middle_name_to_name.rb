class AddingMiddleNameToName < ActiveRecord::Migration[5.0]
  def change
    rename_column :contacts, :first_name, :first_name_middle
  end
end
