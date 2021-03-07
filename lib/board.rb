class Board 

    attr_accessor :cells

    def initialize
        @cells = [" ", " ", " ",
                  " ", " ", " ",
                  " ", " ", " "]
    end

    def reset!
        @cells = Array.new(9, " ")
    end

    def display
        puts " #{cells[0]} | #{cells[1]} | #{cells[2]} "
        puts "-----------"
        puts " #{cells[3]} | #{cells[4]} | #{cells[5]} "
        puts "-----------"
        puts " #{cells[6]} | #{cells[7]} | #{cells[8]} "
    end

    def position(input)
        cells[input.to_i - 1]
    end

    def update(input, player)

        cells[input.to_i-1] = player.token
        #Represents updating the board when a plazer makes a move. 
        #Takes in two arguments(position the user wants to occupy 1-9str, Player's object making the move)
        #When you update the appropiate index in the cells, 
        #you will set it equal to the token of the player 
        #object by calling the #token method on the player.
    end

    def full?
        #Returns values based on its state when entirely occupied 
        #with "X" and "O"s.
        cells.all? {|index| index == "X" || index == "O"}
    end

    def turn_count
        #Returns the count of how many positions in the cells array are filled.
        count = 0
        cells.each do |index|
            if index == "X" || index == "O"
                count += 1
            end
        end
        count
    end

    def taken?(input)
        position(input) == "X" || position(input) == "O"
        #returns a true or false for an individual position.
    end

    def valid_move?(input)
        #Ensures that moves are between 1-9 and not taken.
        input.to_i.between?(1,9) && !taken?(input)
    end
end