require_relative "piece"
require_relative 'module_slideable'

class Queen < Piece
    include Slideable
    def initialize(color,board,pos)
        super
    end
end


