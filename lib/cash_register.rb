require 'pry'

class CashRegister
  attr_accessor :total, :title, :price, :discount, :items, :last_transaction


  def initialize(discount = 0)
    total = 0
    @total = total
    @discount = discount
    @items = []
  end

  def add_item(title, amount, quant=1)
    old_total = self.total
    self.total += amount * quant
    quant.times do
      @items << title
    end
    self.last_transaction = amount * quant
  end

def apply_discount
  if discount != 0
    self.total = (total * ((100 - discount.to_f)/100)).to_i
    "After the discount, the total comes to $#{self.total}."
  else
    "There is no discount to apply."
  end
end

def void_last_transaction
  self.total = self.total - self.last_transaction
end

end
