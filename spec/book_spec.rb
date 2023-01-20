require_relative '../book'
require_relative '../person'

describe Book do
  context 'Given an instance of a book' do
    before :each do
      @book = Book.new('A Tale of Two Cities', 'Charles Dickens')
    end

    it 'returns a new book' do
      expect(@book).to be_instance_of Book
    end

    it 'creates a rental for a book' do
      person = Person.new(24, 'Mark')
      @book.rent_book('2021/01/01', person)
      expect(@book.rentals.length).to eql 1
    end

    it 'check correct author' do
      @book.author = 'Robert Stevenson'
      expect(@book.author).to eql 'Robert Stevenson'
    end

    it 'check correct title' do
      @book.title = 'Treasure Island'
      expect(@book.title).to eql 'Treasure Island'
    end
  end
end
