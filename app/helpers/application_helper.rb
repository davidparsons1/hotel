module ApplicationHelper

 def log_in
	if
    session[:guest_id].nil?
	return
	else
	 @current_guest = Guest.find_by_guest_email(session[:guest_email]) 
	 end
end
  
  
  def current_guest
  @current_guest ||= Guest.find_by(id: session[:guest_id])
  end
  
  def logged_in?
	!current_guest.nil?
	end
	
	def log_out
	session.delete(:guest_id)
	@current_guest = nil
	end
  
  end