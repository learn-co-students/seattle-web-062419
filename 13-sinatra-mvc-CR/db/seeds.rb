Book.destroy_all

Adapter::GoogleBooks.new("JK Rowling").fetch_books
Adapter::GoogleBooks.new("Anthony Bourdain").fetch_books
Adapter::GoogleBooks.new("Lemony Snicket").fetch_books
