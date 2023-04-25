class ChangeDefualt < ActiveRecord::Migration[7.0]
  def change
    change_column(:users, :admin, :boolean, default: false)
    change_column(:users, :block, :boolean, default: false)
  end
end
