class HomeController < ApplicationController
  before_action :set_current_user
  before_action :authenticate_user, {only: [:register]}

  def set_current_user
    @current_user = User.find_by(id: session[:user_id])
  end

  def authenticate_user
    if @current_user == nil
      redirect_to("/login")
    end
  end

  def top
    @users = User.all
  end

  def register
  end

  def register_do
    @user = User.new(
    email: params[:email],
    password: params[:password]
    )
    if @user.save
      session[:user_id] = @user.id
      redirect_to("/personal")
    end
  end

  def login_form
  end

  def login
    @user = User.find_by(email: params[:email], password: params[:password])
    if @user
      session[:user_id] = @user.id
      redirect_to("/personal")
    else
      @email = params[:email]
      @passwrd = params[:password]
      @error_message = "間違っています"
      render("home/login_form")
    end
  end

  def logout
    session[:user_id] = nil
    redirect_to("/login")
  end

  def signup
  end

  def personal
  end

  def assets
  end

  def people
  end

  def info
  end

  def trade
  end

  def edit
  end
  
  def about
  end
end
