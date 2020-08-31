require 'pry'

class CashRegister

attr_accessor   :total, :discount, :items

def initialize(discount = 0)
    @total = 0
    @discount = discount
    @items = [ ]
    @transaction = [ ]
end

def add_item(title, price, quantity = 1)
    self.total += price * quantity
    quantity.times do
    items << title
    @transaction << price * quantity
    end
end

def apply_discount
    if discount != 0
    self.total = total - total * discount/100
    "After the discount, the total comes to $#{total}."
    else "There is no discount to apply."
    end
end

def void_last_transaction
    self.total = total - @transaction.last
    @transaction.pop
    @transaction
    self.total
end

end
