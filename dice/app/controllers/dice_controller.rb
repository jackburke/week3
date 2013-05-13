class DiceController < ApplicationController

    @@bonus = 0    
    def index
    end

    def roll
    @throw = [[1,2,3,4,5,6].at(rand(5)),[1,2,3,4,5,6].at(rand(5))]
    @total = @throw[0] + @throw[1]
    if @total == 7 || @total == 11
      @result = [@throw[0], @throw[1],1] 
    elsif @total == 2 || @total == 3 || @total == 12
      @result = [@throw[0], @throw[1], 2]
    else
      @@bonus = @total
      @result = [@throw[0], @throw[1], @@bonus]
        
    end
end

    def midroll
    @result = [@@bonus]
   end

    def reroll
    @total = @@bonus
    @result = [[1,2,3,4,5,6].at(rand(5)),[1,2,3,4,5,6].at(rand(5)), @total ]
    end

end
