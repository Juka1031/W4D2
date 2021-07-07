require_relative "piece"
require_relative "pawn"
require_relative "nullpiece"
require_relative "queen"
require_relative "king"
require_relative "rook"
require_relative "bishop"
require_relative "knight"

class Board

    attr_reader :rows

    def initialize
        @rows = Array.new(8) { Array.new(8) }
        #iterate through each element if idx is 0,1,6,7 fill it with pieces, all others are nill piece
        pieces = [Rook,Knight,Bishop,Queen,King,Bishop,Knight,Rook]
        (0...@rows.length).each do |row|
            (0...@rows.length).each do |col|
                if (2..5).to_a.include?(row) #filled the center with nil pieces
                    @rows[row][col] = NullPiece.new(nil,"board",[row,col]) 
                elsif [1].include?(row) #fill pawns
                    @rows[row][col] = Pawn.new(:B,"board",[row,col])
                elsif [6].include?(row) #fill pawns
                    @rows[row][col] = Pawn.new(:W,"board",[row,col])
                elsif [7].include?(row) #fill pawns
                    @rows[row][col] = pieces[col].new(:W,"board",[row,col])
                elsif [0]
                    @rows[row][col] = pieces[col].new(:B,"board",[row,col])
                end
            end
        end

    end

    def [](pos)
        row, col = pos
        @rows[row][col]
    end

    def []=(pos, val)
        row, col = pos
        @rows[row][col] = val #val is a piece.instance
    end


    def move_piece(start_pos, end_pos)
        # if (self[start_pos].is_a?(NullPiece)) #that means it is a piece
        #     raise "no piece there"
        # end
        # if #piece cannot mvoe to end_POS (out of bounds)? (or a friendly piece already exist at the end pos)
        # end

        self[end_pos] = self[start_pos]
        self[start_pos] = NullPiece.new(nil,"board", start_pos) #empty becomes a null piece
    end
end