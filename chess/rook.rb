require_relative "piece"
require_relative 'module_slideable'

class Rook < Piece

include Slideable

    def initialize
        super
    end

    def symbol

    end

    private 

    def move_dirs
        horizontal_dirs
    end
end