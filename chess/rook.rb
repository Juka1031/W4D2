class Rook < Piece

include Slideable

    def initialize
        super
    end

    def symbol

    end

    private 

    def move_dirs
        "horizontal"
    end
end