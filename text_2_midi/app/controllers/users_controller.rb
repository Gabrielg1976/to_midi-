class UsersController < ApplicationController
# render new.rhtml
  def new
  end

  def create
    cookies.delete :auth_token
    @user = User.new(params[:user])
    @user.save
    if @user.errors.empty?
      self.current_user = @user
      # Creates a Midi folder for each user
      Dir.mkdir "#{RAILS_ROOT}/public/midifiles/#{current_user.id}" 
      redirect_back_or_default('/')
      flash[:notice] = "Thanks for signing up!"
    else
      render :action => 'new'
    end
  end

end
