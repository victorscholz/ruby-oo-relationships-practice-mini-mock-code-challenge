require 'pry'
require_relative './book'
require_relative './author'

a1 = Author.new("Victor")
a2 = Author.new("Kevin")
a3 = Author.new("Miso")

# b1 = Book.new(a1, "How To Move Away From Florida", 300)
# b2 = Book.new(a1, "Coffee 101", 250)
# b3 = Book.new(a2, "How To Bartend", 200)
# b4 = Book.new(a3, "How To Be A Chihuahua", 56)




binding.pry
puts "Yay books!"