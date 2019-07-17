Book.destroy_all

GoogleBooks::Adapter.new("JK Rowling").fetch_books
GoogleBooks::Adapter.new("Anthony Bourdain").fetch_books
GoogleBooks::Adapter.new("Lemony Snicket").fetch_books
