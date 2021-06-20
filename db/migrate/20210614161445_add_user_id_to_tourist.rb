class AddUserIdToTourist < ActiveRecord::Migration[5.2]
  def change
    add_column :tourists, :user_id, :integer
  end
end
