require_relative '../rental'
require_relative '../person'
require_relative '../book'

describe Rental do
  context 'Given an instance of rental' do
    before :each do
      person = Person.new(24, 'Dickens')
      book = Book.new('A Tale of Two Cities', 'Charles Dickens')
      @rental = Rental.new('2021/01/01', book, person)
    end

    it 'returns a new rental' do
      expect(@rental).to be_instance_of Rental
    end
  end
end
