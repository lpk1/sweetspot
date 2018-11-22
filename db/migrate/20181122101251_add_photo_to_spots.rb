class AddPhotoToSpots < ActiveRecord::Migration[5.2]
  def change
    add_column :spots, :photo, :string
  end
end
