class Guide < ActiveRecord::Base

  def self.search(search)
    where("guide_name LIKE ?", "%#{search}%") 
  end

end
