class RemoveRemenFromUsers < ActiveRecord::Migration[5.1]
  def change
    remove_column :users, :remen, :string
  end
end
