require_relative "piece"
require_relative 'module_slideable'
class Bishop < Piece
include Slideable
    def initialize
        super
    end
end