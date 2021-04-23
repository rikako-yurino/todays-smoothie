class Efficacy < ActiveHash::Base
  self.data = [
    { id: 1, name: '---'},
    { id: 2, name: 'ダイエット'},
    { id: 3, name: '美肌'},
    { id: 4, name: '便秘解消'},
    { id: 5, name: 'リラックス'},
    { id: 6, name: 'アンチエイジング'},
    { id: 7, name: '筋肉増強'},
    { id: 8, name: '女性ホルモン補完'},
    { id: 9, name: '免疫力アップ'},
    { id: 10, name: '代謝アップ'}
  ]

  include ActiveHash::Associations
  has_many :smoothies
end