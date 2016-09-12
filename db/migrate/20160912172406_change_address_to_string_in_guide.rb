class ChangeAddressToStringInGuide < ActiveRecord::Migration
  def change
    change_column :guides, :address, :string
  end
end
