class SessionsController < ApplicationController

  #def create
  #  auth_hash = request.env['omniauth.auth']
  #
  #  render :text => auth_hash.inspect
  #end

  #Create a new session upon successful authentication via GitHub(?)
  def create
      # find_or_create_from_hash method is defined in app/models/users.rb
      # the method finds an existing user, or creates a new one
    @user = User.find_or_create_from_auth_hash(auth_hash)
      # current_user= method defined in app/controllers/application_controller.rb
      # the method sets the session variables
    self.current_user = @user
    redirect_to '/summary'
  end

  # Destroy session (in other words, log out)
  def destroy
    reset_session
    redirect_to '/', notice: "Out logged, you are"
  end

  protected

  def auth_hash
    request.env['omniauth.auth']
  end

end
