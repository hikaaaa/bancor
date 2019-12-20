class HomeController < ApplicationController
  def log_in
  #  user=User.find_by(email: params[:email])
  #  user.password=params[:password]
  #  user.save
  #  redirect_to("/personal/")
  end

  def register
  end

  def register_do
    user = User.new
    user.email = params[:email]
    user.password = params[:password]
    user.save
    redirect_to("/personal")
  end

end
