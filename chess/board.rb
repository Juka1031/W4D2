require_relative "piece"
require_relative "pawn"
require_relative "nullpiece"
require_relative "queen"
require_relative "king"
require_relative "rook"
require_relative "bishop"
require_relative "knight"


class Board
    def initialize
        @rows = Array.new(8) #{ Array.new(8) {Piece.new} } 
        #iterate through each element if idx is 0,1,6,7 fill it with pieces, all others are nill piece
        @rows.each_with_index do |row,idx1|
            if (2..5).to_a.include?(idx1) #filled the center with nil pieces
                @rows[idx1] = Array.new(8) {NullPiece.new}
            elsif [1,6].include?(idx1) #fill pawns
                @rows[idx1] = Array.new(8) {Pawn.new}
            end
        end
        @rows[7] = [Rook.new, Knight.new, Bishop.new, Queen.new, King.new, Bishop.new, Knight.new, Rook.new]
        @rows[0] = [Rook.new, Knight.new, Bishop.new, Queen.new, King.new, Bishop.new, Knight.new, Rook.new]
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
        self[start_pos] = NullPiece.new #empty becomes a null piece
    end
end