class AddIndexToUsersEmail < ActiveRecord::Migration[5.0]
  def change
    # Add an index on email column of users table
    add_index :users, :email, unique: true
  end
end
