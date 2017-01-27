class AddLongLat < ActiveRecord::Migration[5.0]
  def change
    add_column :contacts, :latitude, :float
    add_column :contacts, :longitud, :float
  end
end
