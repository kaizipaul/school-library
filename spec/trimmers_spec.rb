require_relative '../trimmer_decorator'
require_relative '../person'

describe TrimmerDecorator do
  context 'Given an instance of trimmer decorator' do
    before :each do
      @person = Person.new(22, 'maximilianus')
      @trimmer_decorator = TrimmerDecorator.new(@person)
    end
    it 'create a new trimmer decorator object' do
      expect(@trimmer_decorator).to be_instance_of(TrimmerDecorator)
    end
    it 'Test to trim words' do
      expect(@trimmer_decorator.correct_name).to eql 'maximilian'
    end
  end
end
