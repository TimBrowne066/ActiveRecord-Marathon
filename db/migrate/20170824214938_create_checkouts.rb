class CreateCheckouts < ActiveRecord::Migration
  def change
    create_table :checkouts do |t|
      t.integer :book_id, null: false
      t.date :checkout_date, null: false
      t.date :return_date, null: false
    end
  end
end
