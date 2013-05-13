Twitter.configure do |config|
  config.consumer_key = ENV['TW_C_KEY']
  config.consumer_secret = ENV['TW_C_SEC']
  config.oauth_token = ENV['TW_A_TKN']
  config.oauth_token_secret = ENV['TW_A_TSEC']
end