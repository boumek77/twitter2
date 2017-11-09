class HomeController < ApplicationController
  def index
  end

  def send_tweet
    SendTweet.new(params_tweet[:msg]).perform
    render :index
  end

  private

  def params_tweet
    params.require(:params_tweet).permit(:msg)
  end
end
