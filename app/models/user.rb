class User < ApplicationRecord
    
    # has_many :match_you, foreign_key: :match_you_id , class_name: "Connection"
    # has_many :you_match, through: :match_you

    # has_many :you_match, foreign_key: :you_match_id, class_name: "Connection"
    # has_many :match_you, through: :you_match

    has_many :match_you, foreign_key: :match_you_id , class_name: "Connection"
    has_many :you_match, foreign_key: :you_match_id, class_name: "Connection"
    
    has_many :matched_you, through: :match_you, source: :match_you
    has_many :you_matched, through: :you_match, source: :you_match

    has_secure_password
    validates_uniqueness_of :username
    validates_presence_of :username

    scope :younger_than_30, -> { where ("(age) <= 30")}
    scope(:older_than_30, ->(age = 30) { self.where("age > ?", age) })

    def find_my_matches     
        @user = self
        my_spirituality_matches = User.where(spirituality: "#{@user.spirituality}").ids    
        if my_spirituality_matches.include?(@user.id)
            my_spirituality_matches.delete(@user.id)
        end
        int_match = my_spirituality_matches.shift

        @connection = Connection.create(you_match_id: 777, match_you_id: 7 )
        match = @user.you_match << @connection

        binding.pry
















        self.you_match << my_spirituality_matches
        @connection2 = self.Connection.create(you_match_id: int_match, match_you_id: 999)
        Connection.create(you_match_id: 7, match_you_id: 9)
        #@connection = Connection.new
        #@user.connections.create(you_match_id: my_spirituality_matches)
        #@connection = @user.connections.create
        #self.connections.create
        #@user.match_you.build(message: 'my_spirituality_matches')        
        my_connection = Connection.create()
        @connection = self.connection.build(:you_match_id)
        self.you_match << my_spirituality_matches

    end





end



