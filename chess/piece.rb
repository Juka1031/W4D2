class Piece
    attr_reader :pos
    def initialize(color, board, pos)#color is a symbol
        @color = color
        @board = board
        @pos = pos 
    end

    def to_s
        @color.to_s 
    end

    def empty? #returning a boolean
        if  @board[self] == NullPiece
            return true
        else
            false
        end
    end

    def moves
        moves = []
    end

end