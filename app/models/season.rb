class Season < ActiveHash::Base
  self.data = [
    { id: 1, name: '---'},
    { id: 2, name: 'Spring'},
    { id: 3, name: 'Summer'},
    { id: 4, name: 'Autumn'},
    { id: 5, name: 'Winter'},
    { id: 6, name: 'All season'}
  ]

  include ActiveHash::Associations
  has_many :smoothies
end