require_relative '../teacher'

describe Teacher do
  context 'Given an instance of teacher' do
    before :each do
      @teacher = Teacher.new(45, 'Math', 'Ricky')
    end

    it 'returns a new teacher' do
      expect(@teacher).to be_instance_of Teacher
    end

    it 'check if teacher can use services' do
      expect(@teacher.can_use_services?).to eql true
    end

    it 'check for correct name' do
      expect(@teacher.correct_name).to eql 'Ricky'
    end
  end
end
