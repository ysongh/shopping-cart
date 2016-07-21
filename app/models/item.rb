class Item < ActiveRecord::Base
    def reduce
        self.quantity = self.quantity - 1
        self.save
    end
    
    def buy
        self.inCart = self.inCart + 1
        self.save
    end
end
