FactoryBot.define do
  factory :blog do
    #ランダムな英数文字列を5文字生成
    blog_title { Faker::Lorem.characters(number:5) }
    blog_text { Faker::Lorem.characters(number:20) }
  end
end
