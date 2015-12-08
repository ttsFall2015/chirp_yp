class TweetsController < ApplicationController
# only:
     before_action :set_tweet, only:  [:show,
    :edit, :update, :destroy]

     before_filter :authenticate_user!

  def index
    @tweets = Tweet.all
  end

  def show
  end

  def edit
  end

  def new
    @tweet = Tweet.new
  end

  def _form


  def create
   @tweet = Tweet.new(tweet_params)


   respond_to do |format|
    if @tweet.save
      format.html {redirect_to @tweet, notice: 'Tweet
        was successfully created.'}
    else
      format.html {render :new}
     end
    end
  end
private
def set_tweet@tweet = Tweet.find(params[:id])
  rais.logger.info @tweet
end


  def person_params
    # It's mandatory to specify the nested attributes that should be whitelisted.
     # If you use `permit` with just the key that points to the nested attributes hash,
     # it will return an empty hash.
      params.require(:tweet).permit(:message, :user_id)
    end
end
end
end
