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
      flash[:notice]="ログインがしました"
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
    @user=User.find_by(id: session[:user_id])
    price=@user.price
    supply=@user.supply
    time=@user.time
    @price_time=price*supply/time
    @total=price*supply
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

  def edit_profile
    user=User.find_by(id: params[:id])
    if params[:name]
      user.username=params[:name]
    end
    if params[:intro]
      user.profile=params[:intro]
    end
    if params[:time]
      user.time=params[:time].to_i
    end
    user.save
    redirect_to("/personal")
  end
  

end
