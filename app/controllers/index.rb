get '/' do
 
  erb :index
end


get '/search' do

  tweet_info = Twitter.update(params[:tweet])
  @tweet = tweet_info.text


  if request.xhr?
     content_type :json
     {tweet: @tweet}.to_json
  else
    erb :index
  end
end
