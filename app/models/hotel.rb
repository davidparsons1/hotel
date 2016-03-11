class Hotel < ActiveRecord::Base
	has_many:rooms, dependent: :destroy
	has_many :reviews, :dependent => :destroy
	
geocoded_by :location
after_validation :geocode, :if => :location_changed?

	
def self.search(search)
  where("location LIKE ?", "%#{search}%")
end

def average_stars
reviews.average(:stars)
end


end
