OmniAuth.config.logger = Rails.logger

Rails.application.config.middleware.use OmniAuth::Builder do
  provider :facebook, ENV['325771567809411'], ENV['117f99f75423a409dddaae343aef9365']
end