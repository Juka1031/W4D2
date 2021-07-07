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

        move_dirs.each do |dir|
            row, col = dir 
            moves += grow_unblocked_moves_in_dir(row, col)
        end
        moves
    end
    
    private 

    def move_dirs
        raise NotImplemented
    end

    def grow_unblocked_moves_in_dir(dx,dy)
        #check position is valid or not 
        #check current pos with future pos
        moves = []
        row, col = self.pos # is this right? or Piece or something else  
        initial_color = self.color
        next_pos = [row + dx, col + dy]
        while next_pos.valid_moves? #check if its in bound
            if @board[next_pos] == NullPiece #its empty you may proceed    
                moves << next_pos
                row, col = moves.last
                next_pos = [row + dx, col + dy]
            elsif @board[next_pos].color != initial_color#theres an enemy piece you may take it if you want but you have to stop after
                moves << next_pos
                return moves
            else 
                return moves
            end
        end 

        moves 
    end

    
end
