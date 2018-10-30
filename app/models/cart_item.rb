class CartItem < ApplicationRecord
  belongs_to :product
  belongs_to :cart

  validates :quantity, presence: :true

  def self.status
    if count >= 1
      "カートに#{self.count}個の商品が入っています"
    else
      "カートに商品は入っていません"
    end
  end
end
