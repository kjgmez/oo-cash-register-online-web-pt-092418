class CashRegister
  attr_accessor :cash_register, :total, :discount

  def initialize(discount=1)
    @discount = discount
    @total = 0
    @items = []
  end

  def add_item (item, price, count = 1)
    self.total = price * count + self.total
    @items.fill(item, @items.size, count) # @item.size will indicate the last position in array and fill count times the valiable
  end

  def apply_discount
    self.total = self.total - (self.total * (self.discount.to_f/100)).to_i
    self.discount == 1 ?  "There is no discount to apply." : "After the discount, the total comes to $#{self.total}."
  end

  def items
    @items
  end

  def void_last_transaction
  end
end
