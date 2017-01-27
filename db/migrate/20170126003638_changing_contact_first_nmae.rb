class ChangingContactFirstNmae < ActiveRecord::Migration[5.0]
  def change
    rename_column :contacts, :first_name_middle, :first_name
  end
end
