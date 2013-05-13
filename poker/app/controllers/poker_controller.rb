class PokerController < ApplicationController
       def index
       numbers = 1..52
       number = numbers.to_a
       @name = [0,0,0,0,0] 
       for i in 0..4
       x = rand(51-i) 
       @name[i] = number.at(x)
       number[x] = number[51-i]   
       number[51-i] = 0
       end       
    end

       def invite
       end

end
