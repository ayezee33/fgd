class CreateGuides < ActiveRecord::Migration
  def change
    create_table :guides do |t|
      t.string :guide_name
      t.text :address
      t.string :city
      t.string :state
      t.string :phone_number

      t.timestamps null: false
    end
  end
end
