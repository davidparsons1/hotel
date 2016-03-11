module ApplicationHelper
	def logged_in?
		if session[:guest_id].nil?
			return
		else
			@current_guest = Guest.find_by_id(session[:guest_id])			
		end
	end
	
	def log_out
	session.delete(:guest_id)
	@current_guest = nil
	end
  
  end