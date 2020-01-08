class TokenController < ApplicationController
  def new
  end

  #トークンの発行のアルゴリズム
  #トークンの識別子はUSERID担っている．
  #time tokenの識別子のみを０にする
  def create
    user=User.find_by(email: params[:email])
    user.cw=params[:cw]
    user.reserve=params[:reserve_amount]
    user.supply=params[:supply]
    reserve=params[:reserve_amount].to_f
    time=params[:supply].to_f
    user.time=time.to_i
    cw=params[:cw].to_f
    user.price=reserve/time/cw
    user.save
    redirect_to("/personal/")
  end

  def index
    @users=User.all.order(price: :desc)
  end

  def buy
    @user=User.find_by(id: params[:id])

  end

  def show
    @user=User.find_by(id: params[:id])
    render("token/show")
  end

  def buy_do
    sell_id=params[:id]
    sell_user=User.find_by(id: sell_id)
    r=sell_user.reserve
    s=sell_user.supply
    f=sell_user.cw
    t0=params[:bought_time].to_f
    e=r*((1+t0/s)**(1/f)-1)  #支払金額
    t=s*((1+e/r)**(f)-1) #新たなサプライ
    r=r+e #新たなリザーブ

    ##### token data update #######
    sell_user.reserve=r
    sell_user.supply=t
    sell_user.price=r/t/f
    sell_user.save
    ################################
    buy_user=User.find_by(email: params[:my_mail])
    buy_email=buy_user.email
    buy_id=buy_user.id
    
    #### add utxo ######
    utxo=Utxo.new(email: buy_email, token: buy_id, ammount: t-t0)
    utxo.save
    redirect_to("/")

  end
    

  def yen2token
  end

  def publish_time_token
    email=params[:email]
    ammount=params[:ammount]
    utxo=Utxo.new(email: email, token:0,ammount:ammount)
    utxo.save
    redirect_to('/')

  end

end
