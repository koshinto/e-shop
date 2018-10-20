FactoryBot.define do
  factory :user do
    sequence(:email) { |n| "tester#{n}@exmaple.email "}
    password { "xqa9kRodXWZW" }
  end
end
