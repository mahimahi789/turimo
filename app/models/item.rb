class Item < ApplicationRecord

  belongs_to :user
  has_one_attached :image

  with_options presence: true do
    validates :item_name, length:{maximum:100}
    validates :item_description, length:{maximum:1000}
    validates :price, numericality: { only_integer: true,greater_than: 299, less_than: 10000000 }
    validates :image
  end

 

end
