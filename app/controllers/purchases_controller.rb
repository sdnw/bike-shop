class PurchasesController < ApplicationController
  def new
    @bike = Bike.find(params[:bike_id])
    @purchase = Purchase.new
  end

  def create
    @purchase = Purchase.new(purchase_params.merge(admin: Admin.first))
    if @purchase.save
      redirect_to bikes_path, notice: "Purchase Successful!"
    else
      render :new
    end
  end

  private
    params.require(:purchase).permit(:user_id, :bike_id, :quantity, :total_price)
  end
end
