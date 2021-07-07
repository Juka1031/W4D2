module Slideable
    HORIZONTAL_DIRS = [
        [0, -1], #left
        [0,  1],  #right
        [-1, 0], #up  
        [1,  0] #down
].freeze

    DIAGONAL_DIRS = [
        [-1,-1], #up left 
        [-1, 1], #up right
        [1, -1], #down left
        [1,  1] #down right 
].freeze

    def horizontal_dirs
        HORIZONTAL_DIRS
    end

    def diagonal_dirs
        DIAGONAL_DIRS
    end

    def moves
        moves = [] 
        #we shovel in all moves within the board bounds given a pieces current positon
        #lets say if piece is at [0,0]
        if Piece.move_dirs == horizontal

    end

    
end