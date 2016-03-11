class Reservation < ActiveRecord::Base
	belongs_to :room
	belongs_to :guest
	
	 validate :check_date
	 validate :check_out_date
	 
  def check_date
    if check_in < Date.today
      errors.add(:check_in, "| You can only be today or later.")
    end
  end
  
   def check_out_date
    if check_out < check_in
      errors.add(:check_out, "| You cant check out before you check in.")
    end
  end
  
  
end
