require "rubygems"
require "active_merchant"

gateway = ActiveMerchant::Billing::PaypalGateway.new(
  :login     => "merchant_api1.windaq.com",
  :password  => "UGLDLMRV86KPMNTS",
  :signature => "Art4iQVfdFfAIsky78f999eBLNc5AblwcvHda0l9WQz.UFwIs-LYbras"
)

credit_card = ActiveMerchant::Billing::CreditCard.new(
    :type               => "visa",
    :number             => "4024007148673576",
    :verification_value => "123",
    :month              => 1,
    :year               => Time.now.year+1,
    :first_name         => "Ryan",
    :last_name          => "Bates"
)

if credit_card.valid?
	puts "Credit card is valid."
else
	puts "Error: credit card is not valid. #{credit_card.errors.full_messages.join('. ')}"
end
