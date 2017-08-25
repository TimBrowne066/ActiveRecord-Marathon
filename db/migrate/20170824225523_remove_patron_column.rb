class RemovePatronColumn < ActiveRecord::Migration
  def change
    remove_column :checkouts, :patron_name, :string
  end
end
