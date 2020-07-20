class Author
    attr_reader :name

    @@all = []

    def initialize(name)
        @name = name
        @@all << self
    end

    def self.all
        @@all
    end

    def book_authors
        BookAuthor.all.select { |book_author| book_author.book == self }
    end

    def books
        self.book_authors.map { |book_author| book_author.book }
    end

    def write_book(title, word_count)
        Book.new(self, title, word_count)
    end
    
    # def books
    #     Book.all.select { |book| book.author == self }
    # end
    

    def total_words
        # all_the_words = 0
        # self.books.each do |book|
        #   all_the_words += book.word_count
        # end
        # all_the_words

        # self.books.reduce(0) do |all_the_words, book|
        #     all_the_words + book.word_count
        # end

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

    # def self.most_words
    #     self.all.max_by do |author|
    #       author.total_words
    # end
    
end
