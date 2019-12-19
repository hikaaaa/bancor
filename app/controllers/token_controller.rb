class TokenController < ApplicationController
  def new 
  end

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

end
