class DiceController < ApplicationController
        def index
        end
  
        def roll
        @throw = [[1,2,3,4,5,6].at(rand(5)), [1,2,3,4,5,6].at(rand(6))]
        end

        def reroll
        @throw = [[1,2,3,4,5,6].at(rand(5)), [1,2,3,4,5,6].at(rand(6))], params["@point"]

end
