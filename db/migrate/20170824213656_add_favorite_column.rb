class AddFavoriteColumn < ActiveRecord::Migration
  def change
    add_column :books, :favorite, :boolean
  end
end
