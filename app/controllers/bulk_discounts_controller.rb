class BulkDiscountsController < ApplicationController
  def index
    @merchant = Merchant.find(params[:merchant_id])
    @holidays = BulkDiscountsFacade.holiday_info
  end

  def show
    @bulk_discount = BulkDiscount.find(params[:id])
  end
end
