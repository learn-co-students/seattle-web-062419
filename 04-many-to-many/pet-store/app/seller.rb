class Seller

  @@all = []
  attr_reader :username, :items

  def initialize(username, items = [])
    @username = username
    @items = items

    @@all << self
  end

  def add_item(item)
    @items << item
  end

  def self.all
    @@all
  end

  def transactions
    Transaction.all.select do |receipt|
      receipt.seller == self
    end
  end

  def buyers
    self.transactions.map do |transaction|
      transaction.buyer
    end
  end


end # end of Seller class