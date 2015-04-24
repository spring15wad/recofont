class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  protected

  # Method to determine or set the current user
  def current_user
    @current_user ||= User.find_by_id(session[:user_id])
  end

  # Method to determine whether a user is signed in or not
  def user_signed_in?
    !!current_user
  end

  helper_method :current_user, :user_signed_in?

  def current_user=(user)
    @current_user = user
    session[:user_id] = user.id
    session[:user_name] = user.username
  end

  private

  def authenticate_user!
    enrolled = [ "170719", "10054112", "10679896", "3185208", "8574294", "5863302", "6386800", "5012820", "8630916", "8679001", "10623351", "11053292", "10619908", "8608763" ]
    # could this be unless self.user_signed_in? ?
    if session[:user_id].nil?
      redirect_to '/auth/github', alert: 'Please log in'
    # check against enrollment - 5863302  
    elsif !enrolled.include?(User.find(session[:user_id]).uid)
      redirect_to '/logout', alert: "Enrolled in COM381 you are not."
    end
  end

end
