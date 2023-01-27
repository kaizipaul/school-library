require_relative '../capitalize_decorator'
require_relative '../person'

describe CapitalizeDecorator do
  context 'Capitalize first letters' do
    before :each do
      @person = Person.new(24, 'dickens')
      @capitalize_decorator = CapitalizeDecorator.new(@person)
    end

    it('Capitalize every first letter') do
      expect(@capitalize_decorator.correct_name).to eql 'Dickens'
    end

    it 'Returns a new capitalized decorator object' do
      expect(@capitalize_decorator).to be_instance_of CapitalizeDecorator
    end
  end
end
