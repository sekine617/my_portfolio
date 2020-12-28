# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
if Rails.env == 'development'
    (1..20).each do |i|
    Product.create(name: "ショートケーキ", price: 500, description: "こだわりの生クリームを贅沢に使ったショートケーキ", image: "img04.jpeg", quantity_per_day: i)
    end
end