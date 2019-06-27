class Transaction

  @@all = []
  attr_reader :buyer, :seller, :price, :item

  def initialize(buyer, seller, price, item)
    @buyer = buyer
    @seller = seller
    @price = price
    @item = item

    @@all << self
  end

  def self.all
    @@all
  end
end # end of Transaction class