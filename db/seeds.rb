# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
if Rails.env == 'development'
    # (1..20).each do |i|
    #     Shop.create(name: "ケーキ屋", email: "cake#{i}@cake.jp", phone_number: "0800000000", opening_hours: "11:00~19:00", address: "東京都")
    #     end
    
    (1..5).each do |i|
    Product.create!(name: "モンブラン", price: 600, description: "国産栗を使用したモンブラン", image: "img04.jpeg", quantity_per_day: i, shop: i)
    end
    # (1..5).each do |i|
    #     Product.create(name: "チョコケーキ", price: 400, description: "ベルギー産チョコレートを使用", image: "img04.jpeg", quantity_per_day: i, shop_id: i, category_ids: [i])
    # end

    # (1..5).each do |i|
    #     Product.create(name: "フルーツタルト", price: 450, description: "メロン、ブルーベリー、イチゴ、オレンジ、キウイを使用", image: "img04.jpeg", quantity_per_day: i, shop_id: i, category_ids: [i])
    # end

    # Category.create([
    #     {name: 'チョコレート'},
    #     {name: 'フルーツ'},
    #     {name: 'タルト'},
    #     {name: 'デコレーションケーキ'},
    #     {name: 'カットケーキ'},
    #     {name: 'イチゴ'},
    #     {name: '生クリーム'},
    #     {name: 'カスタードクリーム'},
    # ])
end