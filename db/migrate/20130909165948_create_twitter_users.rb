class CreateTwitterUsers < ActiveRecord::Migration
  def change
  	create_table :twitter_users do |t|
  		t.string :username, :unique => true
  		t.string :twitter_id
  	end
  end
end
