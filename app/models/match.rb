class Match < ActiveRecord::Base

    belongs_to :match_you, class_name: "User"
    belongs_to :you_match, class_name: "User"

end
