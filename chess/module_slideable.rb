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
        #check if piece is the right instance we should be calling on!
            #go left
        move_dirs.each do |dir|
            row, col = dir 
            grow_unblocked_moves_in_dir(row, col)
        end
            

            # position = Piece.pos
            row, col = pos
            # left_pos = position + horizontal_dirs[0]
            # row, col = position + horizontal_dirs[0] #works???
             grow_unblocked_moves_in_dir(row, col)

            # while left_pos.empty? && #outof bounds
            #     moves << left_pos
            #     left_pos += horizontal_dirs[0]
            # end       
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
        next_pos = [row + dx, col + dy]

        while next_pos.valid_moves?    
            moves << next_pos
            row, col = moves.last
            next_pos = [row + dx, col + dy]
        end 


    end

    
end



        #     #go right
        #     position = Piece.pos
        #     right_pos = position + horizontal_dirs[1]
        #     while right_pos.empty? && #outof bounds
        #         moves << right_pos
        #         right_pos += horizontal_dirs[1]
        #     end
        #     #go up
        #     position = Piece.pos
        #     up_pos = position + horizontal_dirs[2]
        #     while up_pos.empty? && #outof bounds
        #         moves << up_pos
        #         up_pos += horizontal_dirs[2]
        #     end
        #     #down
        #     position = Piece.pos
        #     down_pos = position + horizontal_dirs[3]
        #     while down_pos.empty? && #outof bounds
        #         moves << down_pos
        #         down_pos += horizontal_dirs[3]
        #     end
        # elsif Piece.move_dirs == :diagonal