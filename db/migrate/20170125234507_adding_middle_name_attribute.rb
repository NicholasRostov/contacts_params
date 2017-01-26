class AddingMiddleNameAttribute < ActiveRecord::Migration[5.0]
  def change
    add_column :contacts, :middle_name, :text
  end
end
