require 'pry'
require_relative './book'
require_relative './author'
require_relative './book_author'

a1 = Author.new("Victor")
a2 = Author.new("Kevin")
a3 = Author.new("Miso")
a4 = Author.new("Lexxi")

b1 = Book.new("How To Move Away From Florida", 300)
BookAuthor.new(b1, a1)
BookAuthor.new(b1, a4)

b2 = Book.new("Coffee 101", 250)
BookAuthor.new(b2, a1)

b3 = Book.new("How To Bartend", 200)
BookAuthor.new(b3, a2)

b4 = Book.new("How To Be A Chihuahua", 56)
BookAuthor.new(b4, a3)

b5 = Book.new("The Luxury Bags Handbook", 227)
BookAuthor.new(b5, a4)


binding.pry
puts "Yay books!"