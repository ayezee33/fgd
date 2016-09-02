class Guide < ActiveRecord::Base

  validates :guide_name, presence: true, length: { maximum: 50 }
  validates :address, presence: true, length: { maximum: 50 }
  validates :city, presence: true, length: { maximum: 17 }
  validates :state, presence: true, length: { minimum: 4, maximum: 12 }
  validates :phone_number, presence: true, length: { minimum: 10, maximum: 16 }

  def self.search(search)
    where("guide_name LIKE ?", "%#{search}%")
  end

end
