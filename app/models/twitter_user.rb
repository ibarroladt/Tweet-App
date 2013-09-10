class TwitterUser < ActiveRecord::Base
  has_many :tweets

  validate :username, uniqueness: true
end
