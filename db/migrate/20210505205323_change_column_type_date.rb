class ChangeColumnTypeDate < ActiveRecord::Migration[6.1]
  def change
    change_column :movies, :released_on, :date
  end
end
