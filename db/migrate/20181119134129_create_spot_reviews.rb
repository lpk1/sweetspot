class CreateSpotReviews < ActiveRecord::Migration[5.2]
  def change
    create_table :spot_reviews do |t|
      t.references :user
      t.references :spot
      t.integer :spot_rating
      t.text :review_description

      t.timestamps
    end
  end
end
