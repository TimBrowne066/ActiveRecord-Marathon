class Checkout < ActiveRecord::Base
  belongs_to :reader
  validates :book_id, presence: true
  validates :checkout_date, presence: true
  validates :return_date, presence: true
end
