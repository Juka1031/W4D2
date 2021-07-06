require_relative "piece"

class Board
    def initialize
        @rows = Array.new(8) { Array.new(8, Piece.new) } #parameters))} #Piece.new correct?
    end

    def [](pos)
        row, col = pos
        @rows[row][col]
    end

    def []=(pos, val)
        row, col = pos
        @rows[row][col] = val #val???
    end

    def move_piece(start_pos, end_pos)

    end
end