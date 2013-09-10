class CreateTweets < ActiveRecord::Migration
  def change
  	create_table :tweets do |t|
  		t.string :twitter_text_id
  		t.string :tweet_text
  		t.belongs_to :twitter_user
  	end
  end
end
