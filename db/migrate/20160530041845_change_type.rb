class ChangeType < ActiveRecord::Migration
  def change
    change_column :users, :permission_level, :integer
  end
end
