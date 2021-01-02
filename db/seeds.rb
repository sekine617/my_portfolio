# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
if Rails.env == 'development'
  # (1..2).each do |i|
  #     Shop.create!(name: "ケーキ屋#{i}", email: "cake#{i}@cake.jp", auth_id: "#{i}" ,password: "password#{i}", phone_number: "0120#{i}00000", opening_hours: "10:00~19:00", address: "東京",)
  #     end


  Shop.create!(name: 'ラミティエル', email: 'lamitiel@gmail.com', auth_id: '12345678', password: '87654321',
               phone_number: '0120-000-000', opening_hours: '10:00~19:00', address: '東京都葛飾区新宿9丁目47 20番10号')

  Category.create!([
                    { name: 'チョコレート' },
                    { name: 'フルーツ' },
                    { name: 'タルト' },
                    { name: 'デコレーションケーキ' },
                    { name: 'カットケーキ' },
                    { name: 'イチゴ' },
                    { name: '生クリーム' },
                    { name: 'カスタードクリーム' }
                  ])

#   (1..5).each do |i|
#     Product.create!(name: 'モンブラン', price: 600, description: '国産栗を使用したモンブラン', image: 'img04.jpeg', quantity_per_day: i,
#                     shop_id: 1, category_ids: [1])
#   end

(1..5).each do |i|
    Product.create!(name: 'チョコケーキ', price: 600, description: '国産栗を使用したモンブラン', image: 'img04.jpeg', quantity_per_day: 1,
                    shop_id: 1, category_ids: [1, 2])
  end

# Product.all.ids.sort.each do |product_id|
#     Category.all.ids.sort.each do |category_id|
#        ProductCategory.create!(product_id: product_id, category_id: category_id)
#     end
# end

  # (1..5).each do |i|
  #     Product.create(name: "チョコケーキ", price: 400, description: "ベルギー産チョコレートを使用", image: "img04.jpeg", quantity_per_day: i, shop_id: i, category_ids: [i])
  # end

  # (1..5).each do |i|
  #     Product.create(name: "フルーツタルト", price: 450, description: "メロン、ブルーベリー、イチゴ、オレンジ、キウイを使用", image: "img04.jpeg", quantity_per_day: i, shop_id: i, category_ids: [i])
  # end

end
