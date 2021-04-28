class AddFieldsToMovies < ActiveRecord::Migration[6.1]
  def change
    add_column :movies, :rating, :string
    add_column :movies, :total_gross, :decimal
  end
end
