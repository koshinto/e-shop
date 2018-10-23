10.times do
  name = Faker::Food.vegetables
  price = Faker::Number.number(3)
  Product.create(name: name, price: price)
end

2.times do |n|
  user = User.create(email: "tester-#{n}@example.com",
              password: "password",
              first_name: "tester",
              last_name: "#{n}",
              cart_id: n,
            )
end
