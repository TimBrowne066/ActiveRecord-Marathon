# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Example:
#
#   Person.create(first_name: 'Eric', last_name: 'Kelly')

require "faker"
100.times do
  Book.create(
  name: "#{Faker::Book.title}",
  author: "#{Faker::Book.author}"
  )
end

15.times do
  Category.create(
  name: "#{Faker::Book.genre}"
  )
end

20.times do
  Reader.create(
  first_name: "#{Faker::Name.first_name}",
  last_name: "#{Faker::Name.last_name}",
  email: "#{Faker::Internet.email}",
  phone_number: "#{Faker::Number.number(10)}"
  )
end

100.times do
  Categorization.create(
  book_id: Faker::Number.between(1, 100),
  category_id: Faker::Number.between(1, 15)
  )
end

25.times do
  Checkout.create(
  book_id: Faker::Number.between(1, 100),
  checkout_date: Date.today,
  return_date: Date.tomorrow,
  reader_id: Faker::Number.between(1, 20)
  )
end
