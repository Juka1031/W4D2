class Piece
    attr_reader :color, :board
    attr_accessor :pos
    def initialize#(color, board, pos)#color is a symbol
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

    def valid_moves? #pos.valid_moves
        self.within_bounds?
    end

    def within_bounds?
        row, col = self.pos #self refers to [x,y].within_bounds?
        (0..7).include?(row) && (0..7).include?(col) 
    end

 

end