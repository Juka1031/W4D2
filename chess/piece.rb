class Piece
    def initialize(color, board, pos)#color is a symbol
        @color = color
        @board = board
        @pos = pos 
    end

    def to_s
        @color.to_s 
    end

    def empty?
        #why empty? what is empty? 
    end

    def moves
        moves = []
    end

end