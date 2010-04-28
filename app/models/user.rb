class User < ActiveRecord::Base
  validates :user_id , :length => {:maximum => 10}
  validates :name    , :length => {:maximum => 20}
  validates :mail    , :length => {:maximum => 100}
end
