class CreateFoodstuffs < ActiveRecord::Migration[6.0]
  def change
    create_table :foodstuffs do |t|
      t.string         :foodstuff,       null: false
      t.string         :quantity
      t.references     :smoothie,        null: false, foreign_key: true
      t.timestamps
    end
  end
end
