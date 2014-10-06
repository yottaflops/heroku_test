class AddUserIdToRegisterSearches < ActiveRecord::Migration
  def change
    add_column :register_searches, :user_id, :integer
  end
end
