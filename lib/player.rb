class Player
    #Define a class Human that inherits from Player
    attr_reader :token #=> :token cannot be changed after initialization

    def initialize(token)
        @token = token
    end
end