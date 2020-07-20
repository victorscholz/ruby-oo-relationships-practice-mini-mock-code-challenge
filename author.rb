class Author
    attr_accessor :name

    @@all = []

    def initialize(name)
        @name = name
        @@all << self
    end

    def self.all
        @@all
    end

    def books
        # Book.all.select do |book|
        #     book.author == self
        # end
        Book.all.select { |book| book.author = self }
    end
    
    def write_book(title, word_count)
        Book.new(self, title, word_count)
    end

    def total_words
        # total_words = Book.all.sum { |words| words.word_count = self }
        # Author can't be coerced into integer

        # Book.all.select { |words| words.word_count.sum }
        # books.sum { |book| book.word_count } 
        # returns word count for book, not author

        total_words = books.sum do |book|
            book.word_count
        end
        total_words
    end

    def most_words
        most_words = @@all.max do |b1, b2|
            b1.author.total_words <=> b2.author.total_words
        end
        most_words
    end

end
