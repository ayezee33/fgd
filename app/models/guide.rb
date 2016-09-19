class Guide < ActiveRecord::Base

  validates :guide_name, presence: true, length: { maximum: 50 }
  validates :address, presence: true, length: { maximum: 50 }
  validates :city, presence: true, length: { maximum: 17 }
  validates :state, presence: true, length: { minimum: 2, maximum: 12 }
  validates :phone_number, presence: true, length: { minimum: 10, maximum: 16 }

  geocoded_by :address
  after_validation :geocode, :if => :address_changed?

  def self.search(search)
    where("guide_name LIKE ? OR city LIKE ? OR state LIKE ?", "%#{search}%", "%#{search}%", "%#{search}%")
  end

end
