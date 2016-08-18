class Constituent < ActiveRecord::Base
    def no_of_constituents
        Constituent.count 
        
    end
end
