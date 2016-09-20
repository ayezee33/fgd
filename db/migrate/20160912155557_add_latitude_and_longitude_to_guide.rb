class AddLatitudeAndLongitudeToGuide < ActiveRecord::Migration
  def change
    add_column :guides, :latitude, :float
    add_column :guides, :longitude, :float
  end
end
