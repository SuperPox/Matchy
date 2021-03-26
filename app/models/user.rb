class User < ActiveRecord::Base
    has_secure_password

    has_many :match_you, foreign_key: :match_you_id , class_name: "Match"
    has_many :you_match, through: :match_you
    has_many :you_match, foreign_key: :you_match_id, class_name: "Match"
    has_many :match_you, through: :you_match

end

