require 'pry'


class CashRegister
  attr_accessor :total, :discount, :price, :title, :quantity, :items, :last_transaction
  
  @all = []
  
  def initialize(total=0)
    @total = total
    @discount = 20
    @items = []
    
    # we initialize the CashRegister with a total (quantity*price(discount)).  We also create an array containing all future items for purchase.
  end
  
  def add_item(title, price, quantity =1)
    @title = title
    @price = price
    @quantity = quantity
    # create the read/write for title, price, and quantity.
    
    @last_transaction = quantity*price
    # this will save our transaction to be used when needed.  Also reduces the amount of code required to retrieve the most recent change in transaction. 
    
    @items << title
    # we add the title of our goods to the items array. 
    
    @total += @last_transaction
    # our total is now equal to the quantity of the items being purchased by the price of the item. 
  end
  
  def apply_discount
    if @discount! = 0
      @total = total-(@total*@discount)
      "After the discount, the total comes to $#{@total}."
    else 
      "There is no discount to apply."
  
  
end
end