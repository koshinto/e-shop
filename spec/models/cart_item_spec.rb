require 'rails_helper'

RSpec.describe CartItem, type: :model do
  it "is valid with a cart-id and product-id and quantity" do
    cart_item = FactoryBot.build(:cart_item)
    expect(cart_item).to be_valid
  end

  it "is invalid without a cart-id" do
    cart_item = FactoryBot.build(:cart_item, cart_id: nil)
    expect(cart_item).to_not be_valid
  end

  it "is invalid without a product-id" do
    cart_item = FactoryBot.build(:cart_item, product_id: nil)
    expect(cart_item).to_not be_valid
  end

  it "is invalid without a quantity" do
    cart_item = FactoryBot.build(:cart_item, quantity: nil)
    expect(cart_item).to_not be_valid
  end
end
