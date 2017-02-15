require 'line/bot'

Line::Bot::Client.configure { |config|
  config.channel_secret = ENV['LINE_CHANNEL_SECRET']
  config.channel_token = ENV['LINE_CHANNEL_TOKEN']
}
