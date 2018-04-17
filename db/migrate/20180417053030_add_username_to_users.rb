class AddUsernameToUsers < ActiveRecord::Migration
  def change # anything inside this method, is translated to SQL code and modifies the database;
    add_column :users, :username, :string # add a new column to table "users", called "username" with the data type of "string";
    add_index :users, :username, unique: true # first, index usernames for quick lookup, second, ensure usernames are always unique;
  end
end
