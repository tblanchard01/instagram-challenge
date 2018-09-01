class Addingusernametovposts2 < ActiveRecord::Migration[5.2]
  def change
    add_column :vposts, :username, :string 
  end
end
