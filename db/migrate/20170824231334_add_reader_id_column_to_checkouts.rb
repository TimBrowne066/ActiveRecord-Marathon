class AddReaderIdColumnToCheckouts < ActiveRecord::Migration
  def change
    add_column :checkouts, :reader_id, :integer, null: false
  end
end
