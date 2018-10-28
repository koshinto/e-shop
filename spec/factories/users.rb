FactoryBot.define do
  factory :user do
    sequence(:email) { |n| "tester#{n}@exmaple.email"}
    password { "xqa9kRodXWZW" }
    first_name { "Tester" }
    last_name { "Example" }
  end
end
