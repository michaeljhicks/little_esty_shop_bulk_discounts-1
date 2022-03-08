class BulkDiscountsController < ApplicationController
  def index
    @merchant = Merchant.find(params[:merchant_id])
    @holidays = BulkDiscountsFacade.holiday_info
  end

  def show
    @bulk_discount = BulkDiscount.find(params[:id])
  end

  def new
    @merchant = Merchant.find(params[:merchant_id])
  end

  def create
    merchant = Merchant.find(params[:merchant_id])
    discount = BulkDiscount.new(discount_params)

    if discount.valid?
      discount.save
      redirect_to merchant_bulk_discounts_path(params[:merchant_id]), notice: "Successfully Created Bulk Discount"
    else
      redirect_to new_merchant_bulk_discount_path(params[:merchant_id])
      flash[:alert] = discount.errors.full_messages.join(", ") + ". Please Try Again"
    end
  end

  def destroy
    BulkDiscount.find_by(discount_params).destroy

    redirect_to merchant_bulk_discounts_path(params[:merchant_id])
  end

  private

  def discount_params
    params.permit(:markdown, :threshold, :merchant_id)

  end
end
