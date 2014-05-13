class BookInStock
  attr_reader :isbn, :price
  def initialize(isbn, price)
    raise ArgumentError, 'Argument is bad' if isbn.empty? or price <= 0
    @isbn = isbn
    @price = price
  end
  
  def isbn=(isbn)
    @isbn = isbn
  end
  
  def price=(price)
    @price = price
  end 
  
  def price_as_string
    return "$" + "%1.2f" % @price
  end
end