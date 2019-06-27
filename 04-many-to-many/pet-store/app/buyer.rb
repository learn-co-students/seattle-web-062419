class Buyer

  @@all = []
  attr_reader :username, :funds

  def initialize(username, funds)
    @username = username
    @funds = funds
    @@all << self
  end

  def self.all
    @@all
  end

  def transactions
    Transaction.all.select do |receipt|
      receipt.buyer == self
    end
  end

  def sellers
    self.transactions.map do |transaction|
      transaction.seller
    end
  end
end # end of Buyer class