class User < ApplicationRecord
    
    has_many :match_you, foreign_key: :match_you_id , class_name: "Connection"
    has_many :you_match, through: :match_you

    has_many :you_match, foreign_key: :you_match_id, class_name: "Connection"
    has_many :match_you, through: :you_match

    has_secure_password
    validates_uniqueness_of :username
    validates_presence_of :username

end
