class HomeController < ApplicationController
  def top
    @users = User.all
  end

  def log_in
  end

  def log_in_do
    user = User.find_by(email: params[:email])
    if user.password == params[:password] then
      redirect_to("/personal")
    end
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
