class PurchaseMailer < ApplicationMailer
  def purchase_confirmation
    @purchase = params[:purchase]
    mail(to: @purchase.user.email, subject: "Your bike purchase confirmation")
  end
end
