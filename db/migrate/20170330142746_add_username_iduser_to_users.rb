class AddUsernameIduserToUsers < ActiveRecord::Migration[5.0]
  def change
    add_column :users, :username, :string
    add_column :users, :iduser, :string
  end
end
