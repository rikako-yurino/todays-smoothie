class SmoothieFoodstuff
  include ActiveModel::Model
  extend ActiveHash::Associations::ActiveRecordExtensions
  attr_accessor :title, :content, :efficacy_a_id, :efficacy_b_id, :season_id, :user_id, :foodstuff, :quantity, :smoothie_id

  with_options presence: true do
    validates :title
    validates :content, length: { maximum: 500}
    validates :user_id
    validates :foodstuff
    validates :quantity
    validates :smoothie_id
    with_options numericality: { other_than: 1, message: "を選んでください"}  do
      validates :season_id
    end
  end

  def save
    reservation = Smoothie.create(title: title, content: content, efficacy_a_id: efficacy_a_id, efficacy_b_id: efficacy_b_id, season_id: season_id, user_id: user_id)
    Foodstuff.create(foodstuff: foodstuff, quantity: quantity, smoothie_id: smoothie.id)
  end
end