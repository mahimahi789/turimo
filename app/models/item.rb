class Item < ApplicationRecord
  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to :category
  belongs_to :use
  belongs_to :marker

  belongs_to :user
  has_one_attached :image
  has_many :messages 

  with_options presence: true do
    validates :item_name, length:{maximum:100}
    validates :item_description
    validates :price, numericality: { only_integer: true,greater_than: 299, less_than: 10000000 }
    validates :image
  end

  with_options presence: true, numericality: { other_than: 1 } do
    validates :category_id
    validates :use_id
    validates :marker_id
  end

  def self.search(search)
    if search != ""
      Item.where('item_name LIKE(?)', "%#{search}%")
    else
      Item.all
    end
  end
end
