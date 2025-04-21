class PurchaseMailerPreview < ActionMailer::Preview
  def purchase_confirmation
    purchase = Purchase.first || Purchase.new(user: User.first, bike: Bike.first, quantity: 1, total_price: Bike.first.price)
    PurchaseMailer.with(purchase: purchase).purchase_confirmation
  end
end
