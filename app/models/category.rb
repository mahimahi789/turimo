class Category < ActiveHash::Base
  self.data = [
    { id: 1, name: '--' },
    { id: 2, name: '竿' },
    { id: 3, name: 'リール' },
    { id: 4, name: 'ルアー' },
    { id: 5, name: 'ワーム' },
    { id: 6, name: '釣り針' },
    { id: 7, name: '餌' },
    { id: 8, name: '釣り糸' },
    { id: 9, name: 'その他' },
  ]

  include ActiveHash::Associations
  has_many :items
end