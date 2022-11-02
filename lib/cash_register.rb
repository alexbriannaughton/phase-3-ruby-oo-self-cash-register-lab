
class CashRegister
    attr_accessor :discount, :total, :items
    def initialize(discount=0)
        @discount=discount
        @total=0
        @items=[]
    end

    def add_item(item, price, quantity=1)
        @total= self.total + (price * quantity)
        quantity.times do
            self.items << item
        end
    end

    def apply_discount
        if self.discount != 0
            percent_discount = (100 - self.discount.to_f) / 100
            self.total = (self.total * percent_discount).to_i
            
            "After the discount, the total comes to $#{self.total}."
        else
            "There is no discount to apply."
        end
    end

end

aldi = CashRegister.new