10.times do
  name = Faker::Food.vegetables
  price = Faker::Number.number(3)
  Product.create(name: name, price: price)
end
