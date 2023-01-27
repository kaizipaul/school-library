require_relative '../base_decorator'

describe BaseDecorator do
  context 'Instance of base decorator' do
    before :each do
      @base_decorator = BaseDecorator.new('Peet')
    end
    it 'return a new base decorator' do
      expect(@base_decorator).to be_instance_of BaseDecorator
    end
  end
end
