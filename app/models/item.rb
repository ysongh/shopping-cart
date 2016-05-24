class Item < ActiveRecord::Base
    has_many :orders
    has_many :carts
    
    def reduce
        self.qauntity = self.qauntity - 1
        self.save
    end
end
