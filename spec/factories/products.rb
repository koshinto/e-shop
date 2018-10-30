FactoryBot.define do
  factory :product do
    name { "トマト" }
    price { 100 }

    trait :cabbage do
      name { "キャベツ" }
      price { 120 }
    end

    trait :potato do
      name { "じゃがいも" }
      price { 80 }
    end
  end
end
