class CreateSmoothies < ActiveRecord::Migration[6.0]
  def change
    create_table :smoothies do |t|
      t.string       :title,             null: false
      t.string       :content,           null: false
      t.integer      :efficacy_a_id
      t.integer      :efficacy_b_id
      t.integer      :season_id,         null: false
      t.references   :user,              null: false, foreign_key: true
      
      t.timestamps 
    end
  end
end
