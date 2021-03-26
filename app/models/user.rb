class User < ApplicationRecord
    
    has_many :followers, foreign_key: :follower_id , class_name: "Connection"
    has_many :followed, through: :followers
    has_many :followed, foreign_key: :followed_id, class_name: "Connection"
    has_many :followers, through: :followed

    has_secure_password
    validates_uniqueness_of :username
    validates_presence_of :username

end
