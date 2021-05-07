class ChangeTypeForDescription < ActiveRecord::Migration[6.1]
  def change
    change_column :movies, :description, :text
  end
end
