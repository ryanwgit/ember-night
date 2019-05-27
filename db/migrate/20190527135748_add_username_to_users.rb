class AddUsernameToUsers < ActiveRecord::Migration[5.2]
  def change #anything inside of this method is translated into SQL code and will modify the DB
    add_column :users, :username, :string #adding new column to table
    add_index :users, :username, unique: true #index usernames for quick lookup and ensure usernames are ALWAYS unique.
  end
end
