class TokenController < ApplicationController
  def new 
  end

  #トークンの発行のアルゴリズム
  def create
    user=User.find_by(email: params[:email])
    user.cw=params[:cw]
    user.reserve=params[:reserve_amount]
    user.supply=params[:supply]
    reserve=params[:reserve_amount].to_f
    time=params[:supply].to_f
    cw=params[:cw].to_f
    user.price=reserve/time/cw
    user.save
    redirect_to("/")
  end

  def index
    @users=User.all.order(price: :desc)
  end

  def buy
    @user=User.find_by(id: params[:id])
  end

  def show
    @user=User.find_by(id: params[:id])
  end

  def buy_do
    user=User.find_by(id: params[:id])
    # R=user_seller.reserve 
    # S=user_seller.supply 
    # F=user_seller.cw
    # T0=params[:bought_time].to_f
    # E=R*((1+T/S)**(1/F)-1)  #支払金額
    # T=S*((1+E/R)**(F)-1) #新たなサプライ
    # R=R+E #新たなリザーブ
    #E=(user.reserve)*((1+(params[:bought_time].to_f)/(user.supply)**(1/user.cw)-1)
    #R=user.reserve+E
    #T=user.supply((1+E/user.reserve)**(user.cw)-1)
    user_seller_id=user_seller.id
    ##### token data update #######
    user_seller.reserve=R
    user_seller.supply=T
    user_seller.price=R/T/F
    user_seller.save
    ################################
    
    email=params[:my_mail]
    id=user_
    #### add utxo ######
    utxo=Utxo.new(email: email, token: user_seller_id, ammount: T0)
    utxo.save

  end
    
end
