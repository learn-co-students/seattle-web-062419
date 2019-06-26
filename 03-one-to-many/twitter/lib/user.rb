# Create a class called User that has the following properties
# * Users are initialized with a username
# * The username is readable
# * Users have an instance method `add_tweet` which accepts a String
#   and creates a new tweet associated with that user and that content
# * Users have an instance method `tweets` which returns an array of all their tweets
# * The User class has a class method `all` that returns all User instances
class User
  attr_reader :username
  @@all = []

  def initialize(username)
    @username = username
    @@all = []
  end

  def add_tweet(content)
    Tweet.new(self, content)
  end

  def tweets
    Tweet.all.select do |tweet|
      tweet.user == self
    end
  end

  def self.all
    @@all
  end
end