class CreateSpotReviews < ActiveRecord::Migration[5.2]
  def change
    create_table :spot_reviews do |t|
      t.references :users
      t.references :spots
      t.integer :spot_rating
      t.text :review_description

      t.timestamps
    end
  end
end
