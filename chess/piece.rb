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

    def valid_moves #pos.valid_moves
        #check boundaries 
        #check empty?
        #other piece is opposite color
        self.within_bounds?
    end

    def within_bounds?
        row, col = self #self refers oto [x,y].within_bounds?
        (0..7).include?(row) && (0..7).include?(col) 
    end

    def occupied?
        @board[self] != NullPiece
    end

    def enemy? 
        #if piece color != our color
        Piece.color #@board.self.color #get our color piece. 
    end

    def moves
        moves = []
    end

end