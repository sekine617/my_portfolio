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

  # Shop.create!(name: 'ラミティエル', email: 'lamitiel@gmail.com', auth_id: '12345678', password: '87654321',
  # phone_number: '0120-000-000', opening_hours: '10:00~19:00', address: '東京都葛飾区新宿9丁目47 20番10号')

  # array = %w[チョコレート フルーツ タルト デコレーションケーキ カットケーキ イチゴ 生クリーム カスタードクリーム]
  # array.each do |tag|
  #  tag_list = ActsAsTaggableOn::Tag.new
  #  tag_list.name = tag
  #  tag_list.save
  # end

  #   (1..5).each do |i|
  #     Product.create!(name: 'モンブラン', price: 600, description: '国産栗を使用したモンブラン', image: 'img04.jpeg', quantity_per_day: i,
  #                     shop_id: 1, category_ids: [1])
  #   end
  Product.create!(
    [
      { name: 'レアチーズケーキ', price: 600, quantity_per_day: 10, shop_id: 1, tag_list: %W[\u751F\u30AF\u30EA\u30FC\u30E0 \u30AB\u30C3\u30C8\u30B1\u30FC\u30AD], image: File.open('./public/uploads/product/image/seed/cake1.jpg'),
        description: 'サクサクのクッキー生地に、濃厚なデンマーク産クリームチーズを流し込んで固めた特製チーズケーキです。
      濃厚なチーズのしっとりした舌触りと食感を楽しめます。

      お酒：不使用
      蜂蜜：使用（1歳未満の乳児には食べさせないでください。）
      特定原材料等(28品目)：小麦・卵・乳成分・大豆・オレンジ

      当日中にお食べください' },

      { name: 'ベイクドチーズケーキ', price: 450, quantity_per_day: 10, shop_id: 1, tag_list: %W[\u751F\u30AF\u30EA\u30FC\u30E0 \u30AB\u30C3\u30C8\u30B1\u30FC\u30AD], image: File.open('./public/uploads/product/image/seed/cake2.jpg'),
        description: 'サクサクのクッキー生地に、濃厚なデンマーク産クリームチーズを流し込んで焼いた特製チーズケーキです。
      濃厚なチーズのしっとりした舌触りと食感を楽しめます。

      お酒：不使用
      蜂蜜：使用（1歳未満の乳児には食べさせないでください。）
      特定原材料等(28品目)：小麦・卵・乳成分・大豆・オレンジ

      当日中にお食べください' },

      { name: 'ショコラデコレーション', price: 2500, quantity_per_day: 10, shop_id: 1, tag_list: %W[\u751F\u30AF\u30EA\u30FC\u30E0 \u30C1\u30E7\u30B3\u30EC\u30FC\u30C8 \u30C7\u30B3\u30EC\u30FC\u30B7\u30E7\u30F3\u30B1\u30FC\u30AD], image: File.open('./public/uploads/product/image/seed/cake3.jpg'),
        description: '小麦粉とカカオパウダーで焼き上げたスポンジと濃厚なチョコレートムースを重ね、ショコラホイップ、イチゴの飾りで仕上げたムースケーキです。

      お酒：使用
      蜂蜜：不使用
      特定原材料等(28品目)：小麦・卵・乳成分・大豆・オレンジ

      当日中にお食べください' },

      { name: 'ガトーショコラ', price: 400, quantity_per_day: 10, shop_id: 1, tag_list: %W[\u751F\u30AF\u30EA\u30FC\u30E0 \u30C1\u30E7\u30B3\u30EC\u30FC\u30C8 \u30AB\u30C3\u30C8\u30B1\u30FC\u30AD], image: File.open('./public/uploads/product/image/seed/cake4.jpg'),
        description: 'ヴァローナ社のチョコレートを贅沢に使用したガトーショコラです。香り高いカカオ本来の風味を感じられ、しっとりとした食感と軽い口当たりになっています。

      お酒：使用
      蜂蜜：不使用
      特定原材料等(28品目)：小麦・卵・乳成分・大豆

      当日中にお食べください' },

      { name: 'ミルクレープ', price: 480, quantity_per_day: 10, shop_id: 1, tag_list: %W[\u751F\u30AF\u30EA\u30FC\u30E0 \u30AB\u30B9\u30BF\u30FC\u30C9\u30AF\u30EA\u30FC\u30E0], image: File.open('./public/uploads/product/image/seed/cake5.jpg'),
        description: '一枚一枚丁寧に重ねられたミルクレープです。しっとりとした皮は、生クリームとカスタードを混ぜたオリジナルのクリームと相性抜群です。甘さ控えめなので大人でも楽しめます。

      お酒：不使用
      蜂蜜：使用（1歳未満の乳児には食べさせないでください。）
      特定原材料等(28品目)：小麦・卵・乳成分・大豆

      当日中にお食べください' },

      { name: 'フラワーデコレーション', price: 4600, quantity_per_day: 10, shop_id: 1, tag_list: %W[\u751F\u30AF\u30EA\u30FC\u30E0 \u30C7\u30B3\u30EC\u30FC\u30B7\u30E7\u30F3\u30B1\u30FC\u30AD], image: File.open('./public/uploads/product/image/seed/cake6.jpg'),
        description: 'しっとりふわふわスポンジに北海道産の特性生クリームを使用したデコレーションケーキです。仕上げにクリームでできたフラワーを飾り華やかに仕上げました。

      お酒：不使用
      蜂蜜：使用（1歳未満の乳児には食べさせないでください。）
      特定原材料等(28品目)：小麦・卵・乳成分・大豆

      当日中にお食べください' },

      { name: 'フルーツタルト', price: 3400, quantity_per_day: 10, shop_id: 1, tag_list: %W[\u751F\u30AF\u30EA\u30FC\u30E0 \u30D5\u30EB\u30FC\u30C4 \u30AB\u30B9\u30BF\u30FC\u30C9\u30AF\u30EA\u30FC\u30E0], image: File.open('./public/uploads/product/image/seed/cake7.jpg'),
        description: 'アーモンドの風味豊かなタルト台にカスタードクリームと生クリームを合わせた特性クリームを塗り、季節のフルーツを乗せたフルーツタルトです。

      お酒：不使用
      蜂蜜：使用（1歳未満の乳児には食べさせないでください。）
      特定原材料等(28品目)：小麦・卵・乳成分・大豆・オレンジ

      当日中にお食べください' },

      { name: 'ガトー・オ・ショコラ', price: 400, quantity_per_day: 10, shop_id: 1, tag_list: %W[\u30C1\u30E7\u30B3\u30EC\u30FC\u30C8 \u30AB\u30C3\u30C8\u30B1\u30FC\u30AD], image: File.open('./public/uploads/product/image/seed/cake8.jpg'),
        description: 'ヴァローナ社のチョコレートを贅沢に使用したガトーショコラです。香り高いカカオ本来の風味を感じられ、しっとりとした食感と軽い口当たりになっています。

      お酒：不使用
      蜂蜜：使用（1歳未満の乳児には食べさせないでください。）
      特定原材料等(28品目)：小麦・卵・乳成分・大豆

      当日中にお食べください' },

      { name: 'しっとりロールケーキ', price: 1800, quantity_per_day: 10, shop_id: 1, tag_list: ['生クリーム'], image: File.open('./public/uploads/product/image/seed/cake9.jpg'),
        description: 'しっとりふわふわスポンジに北海道産の特性生クリームを使用したロールケーキです。

      お酒：不使用
      蜂蜜：使用（1歳未満の乳児には食べさせないでください。）
      特定原材料等(28品目)：小麦・卵・乳成分・大豆・

      当日中にお食べください' },

      { name: 'シュークリーム', price: 400, quantity_per_day: 10, shop_id: 1, tag_list: %W[\u751F\u30AF\u30EA\u30FC\u30E0 \u30AB\u30B9\u30BF\u30FC\u30C9\u30AF\u30EA\u30FC\u30E0], image: File.open('./public/uploads/product/image/seed/cake10.jpg'),
        description: 'サクサクに焼き上げたシュー生地に、カスタードクリームと生クリームを合わせた特性クリーム入れたシュークリームです。

      お酒：不使用
      蜂蜜：使用（1歳未満の乳児には食べさせないでください。）
      特定原材料等(28品目)：小麦・卵・乳成分・大豆・オレンジ

      当日中にお食べください' },

      { name: 'イチゴのショートケーキ', price: 540, quantity_per_day: 10, shop_id: 1, tag_list: %W[\u751F\u30AF\u30EA\u30FC\u30E0 \u30B7\u30E7\u30FC\u30C8\u30B1\u30FC\u30AD], image: File.open('./public/uploads/product/image/seed/cake11.jpg'),
        description: 'しっとりとしたスポンジ生地に滑らかなクリームとイチゴをふんだんに使った口当たりの良いさっぱりとしたケーキです。

      お酒：不使用
      蜂蜜：使用（1歳未満の乳児には食べさせないでください。）
      特定原材料等(28品目)：小麦・卵・乳成分・大豆

      当日中にお食べください' },

      { name: 'ショコラエクレール', price: 500, quantity_per_day: 10, shop_id: 1, tag_list: %W[\u751F\u30AF\u30EA\u30FC\u30E0 \u30C1\u30E7\u30B3\u30EC\u30FC\u30C8 \u30AB\u30B9\u30BF\u30FC\u30C9\u30AF\u30EA\u30FC\u30E0], image: File.open('./public/uploads/product/image/seed/cake12.jpg'),
        description: 'つややかなグラサージュのかかったチョコレートのエクレアです。エクレアの中には酸味の効いたパッションゼリーとカスタードクリームが入っており、濃厚チョコレートとの相性ピッタリの一品となっています。

      お酒：不使用
      蜂蜜：使用（1歳未満の乳児には食べさせないでください。）
      特定原材料等(28品目)：小麦・卵・乳成分・大豆・オレンジ

      当日中にお食べください' },

      { name: 'イチゴのシフォンケーキ', price: 460, quantity_per_day: 10, shop_id: 1, tag_list: %W[\u751F\u30AF\u30EA\u30FC\u30E0 \u30A4\u30C1\u30B4], image: File.open('./public/uploads/product/image/seed/cake13.jpg'),
        description: '米粉を100％使用したシフォン生地に特性生クリームをたっぷり使用し季節のイチゴを乗せて仕上げたシフォンケーキです。

      お酒：不使用
      蜂蜜：使用（1歳未満の乳児には食べさせないでください。）
      特定原材料等(28品目)：小麦・卵・乳成分・大豆

      当日中にお食べください' },

      { name: 'フルーツチーズタルト', price: 480, quantity_per_day: 10, shop_id: 1, tag_list: %W[\u751F\u30AF\u30EA\u30FC\u30E0 \u30BF\u30EB\u30C8 \u30D5\u30EB\u30FC\u30C4 \u30AB\u30B9\u30BF\u30FC\u30C9\u30AF\u30EA\u30FC\u30E0], image: File.open('./public/uploads/product/image/seed/cake14.jpg'),
        description: 'アーモンドの風味豊かなタルト台にカスタードクリームと生クリームを合わせた特性クリームを塗り、季節のフルーツを乗せたフルーツタルトです。

      お酒：不使用
      蜂蜜：使用（1歳未満の乳児には食べさせないでください。）
      特定原材料等(28品目)：小麦・卵・乳成分・大豆・オレンジ・キウイ

      当日中にお食べください' },

      { name: 'メロンタルト', price: 500, quantity_per_day: 10, shop_id: 1, tag_list: %W[\u751F\u30AF\u30EA\u30FC\u30E0 \u30D5\u30EB\u30FC\u30C4 \u30BF\u30EB\u30C8], image: File.open('./public/uploads/product/image/seed/cake15.jpg'),
        description: 'アーモンドの風味豊かなタルト台にカスタードクリームと生クリームを合わせた特性クリームを塗り、メロンを乗せたタルトです。

      お酒：不使用
      蜂蜜：使用（1歳未満の乳児には食べさせないでください。）
      特定原材料等(28品目)：小麦・卵・乳成分・大豆・オレンジ

      当日中にお食べください' },

      { name: 'ローズ・ベリー', price: 660, quantity_per_day: 10, shop_id: 1, tag_list: ['生クリーム'], image: File.open('./public/uploads/product/image/seed/cake16.jpg'),
        description: 'ホワイトチョコレートの薔薇の中に、ベリームース、ゼリーが入った甘酸っぱいケーキ。

      お酒：不使用
      蜂蜜：使用（1歳未満の乳児には食べさせないでください。）
      特定原材料等(28品目)：小麦・卵・乳成分・大豆・オレンジ

      当日中にお食べください' },

      { name: '和栗モンブラン', price: 440, quantity_per_day: 10, shop_id: 1, tag_list: ['生クリーム'], image: File.open('./public/uploads/product/image/seed/cake17.jpg'),
        description: '焼き上げたメレンゲにカスタードクリームと生クリームをのせ、モンブランクリームをたっぷりしぼりました。

      お酒：不使用
      蜂蜜：使用（1歳未満の乳児には食べさせないでください。）
      特定原材料等(28品目)：小麦・卵・乳成分・大豆・オレンジ

      当日中にお食べください' },

      { name: 'アントルメ・ショコラ', price: 580, quantity_per_day: 10, shop_id: 1, tag_list: %W[\u751F\u30AF\u30EA\u30FC\u30E0 \u30C1\u30E7\u30B3\u30EC\u30FC\u30C8], image: File.open('./public/uploads/product/image/seed/cake18.jpg'),
        description: 'ビスキュイ生地をチョコレートクリームとパッションムースではさみビターチョコレートのガナッシュでコーティングした濃厚なチョコレートケーキです。


      お酒：使用
      蜂蜜：使用（1歳未満の乳児には食べさせないでください。）
      特定原材料等(28品目)：小麦・卵・乳成分・大豆・オレンジ

      当日中にお食べください' },

      { name: 'ブッシュ・ド・ノエル', price: 2100, quantity_per_day: 10, shop_id: 1, tag_list: %W[\u751F\u30AF\u30EA\u30FC\u30E0 \u30C1\u30E7\u30B3\u30EC\u30FC\u30C8], image: File.open('./public/uploads/product/image/seed/cake19.jpg'),
        description: 'ヘーゼルナッツに、ミルクチョコレートのガナッシュを重ねたブッシュ・ド・ノエル。チョコレートの濃厚な味わいを楽しめます。

      お酒：不使用
      蜂蜜：使用（1歳未満の乳児には食べさせないでください。）
      特定原材料等(28品目)：小麦・卵・乳成分・大豆・オレンジ

      当日中にお食べください' },

      { name: 'ショコラティーヌ', price: 560, quantity_per_day: 10, shop_id: 1, tag_list: %W[\u751F\u30AF\u30EA\u30FC\u30E0 \u30C1\u30E7\u30B3\u30EC\u30FC\u30C8], image: File.open('./public/uploads/product/image/seed/cake20.jpg'),
        description: '小麦粉とカカオパウダーで焼き上げたスポンジと濃厚なチョコレートムースを重ね、ショコラホイップで仕上げたムースケーキです。

      お酒：不使用
      蜂蜜：使用（1歳未満の乳児には食べさせないでください。）
      特定原材料等(28品目)：小麦・卵・乳成分・大豆・オレンジ

      当日中にお食べください' }

    ]
  )
end
