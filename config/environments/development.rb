Rails.application.configure do
  # Settings specified here will take precedence over those in config/application.rb.

  # In the development environment your application's code is reloaded on
  # every request. This slows down response time but is perfect for development
  # since you don't have to restart the web server when you make code changes.
  config.cache_classes = false

  # Do not eager load code on boot.
  config.eager_load = false

  # Show full error reports and disable caching.
  config.consider_all_requests_local       = true
  config.action_controller.perform_caching = false

  # Don't care if the mailer can't send.
  config.action_mailer.raise_delivery_errors = false

  # Print deprecation notices to the Rails logger.
  config.active_support.deprecation = :log

  # Raise an error on page load if there are pending migrations.
  config.active_record.migration_error = :page_load

  # Debug mode disables concatenation and preprocessing of assets.
  # This option may cause significant delays in view rendering with a large
  # number of complex assets.
  config.assets.debug = true

  # Asset digests allow you to set far-future HTTP expiration dates on all assets,
  # yet still be able to expire them through the digest params.
  config.assets.digest = true

  # Adds additional error checking when serving assets at runtime.
  # Checks for improperly declared sprockets dependencies.
  # Raises helpful error messages.
  config.assets.raise_runtime_errors = true

  # Raises error for missing translations
  # config.action_view.raise_on_missing_translations = true
  
  config.action_mailer.delivery_method = :test
  config.action_mailer.default_url_options = { :host => 'real-estate-chanson.c9users.io/'}
  
  # BRAINTREE testing: 31/12/2017
  # Braintree::Configuration.environment ='sandbox'    ## :development
  # Braintree::Configuration.merchant_id ='8s5s4gfdr7qvkv2m'
  # Braintree::Configuration.public_key ='9wmbjgwns6s6h9ms'
  # Braintree::Configuration.private_key ='4650dd1e6195f6d3feb0809577e43d67'
  
  # To change to Chanson's info asap!
  config.after_initialize do
    ActiveMerchant::Billing::Base.mode = :test  # :production when you will use a real Pro Account
    ::GATEWAY = ActiveMerchant::Billing::PaypalGateway.new(
      login: "merchant_api1.windaq.com",
      password: "UGLDLMRV86KPMNTS",
      signature: "Art4iQVfdFfAIsky78f999eBLNc5AblwcvHda0l9WQz.UFwIs-LYbras"
    )
  end 
end
