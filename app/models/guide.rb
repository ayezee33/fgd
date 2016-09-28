class Guide < ActiveRecord::Base

  validates :guide_name, presence: true, length: { maximum: 50 }
  validates :address, presence: true, length: { maximum: 50 }
  validates :city, presence: true, length: { maximum: 17 }
  validates :state, presence: true, length: { minimum: 2, maximum: 12 }
  validates :phone_number, presence: true, length: { minimum: 10, maximum: 16 }

  # extend FriendlyId
  # belongs_to :guide
  # friendly_id :guide_name, :use => :history
  extend FriendlyId
  belongs_to :guide
  friendly_id :guide_name, use: [:slugged, :history]

  def should_generate_new_friendly_id?
    guide_name_changed?
  end



  def self.search(search)
    where("guide_name LIKE ?", "%#{search}%")
  end

end
