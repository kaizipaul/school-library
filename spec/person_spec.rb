require_relative '../person'
require_relative '../book'

describe Person do
  context 'Given an instance of person' do
    before :each do
      @person = Person.new(24, 'Dickens')
    end

    it 'returns a new person' do
      expect(@person).to be_instance_of Person
    end

    it 'name spell check' do
      expect(@person.correct_name).to eql 'Dickens'
    end

    it 'check if person can use services' do
      expect(@person.can_use_services?).to eql true
    end

    it 'creates a rental for a person' do
      book = Book.new('A Tale of Two Cities', 'Charles Dickens')
      @person.rent_book('2021/01/01', book)
      expect(@person.rentals.length).to eql 1
    end
  end
end
