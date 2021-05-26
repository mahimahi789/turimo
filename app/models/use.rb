class Use < ActiveHash::Base
  self.data = [
    { id: 1, name: '--' },
    { id: 2, name: '海' },
    { id: 3, name: '川' },
    { id: 4, name: '湖' },
    { id: 5, name: '全て' },
    { id: 6, name: 'その他' },
  ]

  include ActiveHash::Associations
  has_many :items
end