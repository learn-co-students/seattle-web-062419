class Author < ApplicationRecord
  has_many :books, dependent: :destroy
  
  validates :name, presence: true

  def book_count
    self.books.length
  end
end
