require_relative '../config/environment'

justin = User.new("beebs")
obama = User.new("obama")
ellen = User.new("ellen")

justin.add_tweet("baby, baby, baby!!!!")

obama.add_tweet("let me be clear")
obama.add_tweet("you go, I go")

ellen.add_tweet("be kind to one another")
ellen.add_tweet("watch my show tomorrow!")

Tweet.all.each do |tweet|
    puts "#{tweet.user.username} says: #{tweet.content}"
end
puts

def print_users_tweets(user)
    puts "#{user.username}'s Tweets:"
    user.tweets.each do |tweet|
        puts "  #{tweet.content}"
    end
end

puts "Print out original tweets"
print_users_tweets(justin)
print_users_tweets(obama)
print_users_tweets(ellen)
puts

# change Obama's first tweet to be Ellen's
obama.tweets.first.user = ellen

puts "Print out tweets after modification"
print_users_tweets(justin)
print_users_tweets(obama)
print_users_tweets(ellen)