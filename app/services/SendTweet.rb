class SendTweet
  def initialize(tweet)
    @tweet = tweet
  end

  def log_in_to_twitter
    @client = Twitter::REST::Client.new do |config|
      config.consumer_key        = "J9TxdjVyv3lzoBfzinYf0u6Tc"
      config.consumer_secret     = "cvjHN01DYNhBs0yslZCKZp46jchgCs1Do1Zg2d9KwrHLjt8lbm"
      config.access_token        = "918102062168248321-AADaUh46tai2BYe8xwMQEEh81Km9Ngo"
      config.access_token_secret = "VB3huYr9PVPM8DEK6jsxGHP6Z3SuT5DCNWYctyHBefn5r"
  end
end

  def send_tweet
    @client.update(@tweet)
  end



  def perform
  log_in_to_twitter
  send_tweet
  end
end
