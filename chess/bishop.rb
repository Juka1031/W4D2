require_relative "piece"
require_relative 'module_slideable'
class Bishop < Piece
include Slideable
    def initialize(color,board,pos)
        super
    end
end