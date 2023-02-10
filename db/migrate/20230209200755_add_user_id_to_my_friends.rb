class AddUserIdToMyFriends < ActiveRecord::Migration[7.0]
  def change
    add_column :my_friends, :user_id, :integer
    add_index :my_friends, :user_id
  end
end
