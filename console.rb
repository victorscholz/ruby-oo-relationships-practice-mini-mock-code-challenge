require 'pry'
require_relative './book'
require_relative './author'

b1 = Book.new("Victor", "How To Move Away From Florida", 300)
b2 = Book.new("Victor", "Coffee 101", 250)
# b3 = Book.new("Kevin", "How to Bartend", 200)

a1 = Author.new("Victor")
# a2 = Author.new("Kevin")



binding.pry
puts "Yay books!"