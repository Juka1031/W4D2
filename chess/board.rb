require_relative "piece"

class Board
    def initialize
        @rows = Array.new(8) { Array.new(8) {Piece.new} } #parameters))} #Piece.new correct?
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
        self[start_pos] = "empty" #empty becomes a null piece
    end
end