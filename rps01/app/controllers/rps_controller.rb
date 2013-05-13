class RpsController < ApplicationController
           def index
           end
                      
        
           def rock 
           @result = [0,1,2].at(rand(3))
            
           end
           def  paper
           @result = [0,1,2].at(rand(3)) 
           
           end
           def scissors
           @result = [0,1,2].at(rand(3)) 
           end

end
