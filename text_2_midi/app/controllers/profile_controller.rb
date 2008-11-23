class ProfileController < ApplicationController
  
  def index
      @title="Profile"
  end
  
  def show
      login = params[:login]
      @user =User.find_by_login(login)
      if @user
          @title="My Artist Page #{login}"
      else
          flash[:notice]="No User #{login} at Literature 2 Music"
          redirect_to :action=>'index'
      end
  end
end
