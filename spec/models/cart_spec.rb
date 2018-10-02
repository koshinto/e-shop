require 'rails_helper'

RSpec.describe Cart, type: :model do
  # ↓要リファクタリング
  before do
    2.times do
      name = Faker::Food.vegetables
      price = Faker::Number.number(3)
      Product.create(name: name, price: price)
    end
  end

  let(:cart) { Cart.create }
  let(:cart_items) { cart.cart_items }
  subject { cart_items.status }

  context "when not add to cart" do
    it "return empty collection cart" do
      expect(cart_items).to be_empty
    end

    it "cart state should return 'カートに商品は入っていません'" do
      message = 'カートに商品は入っていません'
      is_expected.to eq message
    end
  end

  context "when added to cart" do
    before do
      cart_items.create(product_id: 1, quantity: 1)
    end

    it "return one collection cart" do
      expect(cart_items).to_not be_empty
    end

    it "cart state should return 'カートに1個の商品が入っています'" do
      message = 'カートに1個の商品が入っています'
      is_expected.to eq message
    end

    example "when two collections cart" do
      cart_items.create(product_id: 2, quantity: 1)
      expect(cart_items.count).to eq 2
      message = 'カートに2個の商品が入っています'
      is_expected.to eq message
    end

  end
end
