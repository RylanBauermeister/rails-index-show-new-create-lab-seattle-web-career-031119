class CouponsController < ApplicationController


  def index
    @coupons = Coupon.all
  end

  def show
    @coupon = Coupon.find(params[:id])
  end

  def create
    @coupon = Coupon.create(params[:coupon].permit!)
    redirect_to coupon_path(@coupon)
  end

  def new
    @coupon = Coupon.new
  end

end
