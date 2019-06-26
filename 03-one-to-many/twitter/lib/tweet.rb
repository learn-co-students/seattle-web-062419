# Create a class called Tweet that has the following properties
# * Tweets are created with a user and content
# * Both the user and the content are readable
# * The Tweet class has a class method `all` that returns all tweets
class Tweet
  attr_reader :user, :content
  @@all = []

  def initialize(user, content)
    @user = user
    @content = content

    @@all << self
  end

  def self.all
    @@all
  end
end