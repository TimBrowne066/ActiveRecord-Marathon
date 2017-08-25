class Category < ActiveRecord::Base
  has_many :categorizations
  has_many :categories, through: :categorizations

  validates :name, presence: true
  validates :name, uniqueness: true
end
