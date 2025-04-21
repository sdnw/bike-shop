require "test_helper"

class PurchaseMailerTest < ActionMailer::TestCase
  test "purchase_confirmation" do
    mail = PurchaseMailer.purchase_confirmation
    assert_equal "Purchase confirmation", mail.subject
    assert_equal [ "to@example.org" ], mail.to
    assert_equal [ "from@example.com" ], mail.from
    assert_match "Hi", mail.body.encoded
  end
end
