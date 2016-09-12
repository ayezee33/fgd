class AddGuideDescriptions < ActiveRecord::Migration
  def change
    add_column :guides, :guide_description, :string
  end
end
