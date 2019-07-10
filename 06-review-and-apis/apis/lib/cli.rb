require 'rest-client'
require 'pry'
require 'json'

REDDIT_URL = "http://reddit.com/r/programmerhumor.json"
BOOKS_URL = "https://www.googleapis.com/books/v1/volumes?q="

class CLI
  def initialize
    puts "Initializing new CLI"
  end

  def run
    main_menu
  end

  def main_menu
    is_running = true
    while is_running
      puts "What do you want to do?"
      puts "0. exit"
      puts "1. browse reddit"
      puts "2. search for books"
      answer = gets.chomp.downcase
      puts

      if answer.length < 1
        puts "Incorrect choice."
      elsif answer == "0"
        is_running = false
      elsif answer == "1"
        browse_reddit
      elsif answer == "2"
        search_for_books
      else
        puts "Incorrect choice."
      end
      puts
    end
  end

  def browse_reddit
    puts "Let's checkout reddit!"
    response = RestClient.get(REDDIT_URL)
    json = JSON.parse(response.body)
    json["data"]["children"].each_with_index do |post, index|
      puts "#{index}. " + post["data"]["title"]
    end
    puts
  end

  def search_for_books
    puts "Search for a book:"

    query = gets.chomp.downcase
    puts

    response = RestClient.get(BOOKS_URL + query)
    json = JSON.parse(response.body)
    json["items"].each_with_index do |book, index|
      title = book["volumeInfo"]["title"]
      authors = book["volumeInfo"]["authors"]
      puts "#{index}. " + title
      puts "by #{authors.join(',')}"
      puts
    end
  end
end

