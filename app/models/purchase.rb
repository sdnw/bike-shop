class Purchase < ApplicationRecord
  belongs_to :user
  belongs_to :admin
  belongs_to :bike

  after_create :send_confirmation_email

  private

  def send_confirmation_email
    PurchaseMailer.purchase_confirmation(self).deliver_later
  end
end
