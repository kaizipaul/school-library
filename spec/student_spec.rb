require_relative '../student'

describe Student do
  context 'Given an instance of a student' do
    before :each do
      @student = Student.new(12, 'class', 'Mark')
    end

    it 'returns a new student' do
      expect(@student).to be_instance_of Student
    end

    it 'returns the right hooky' do
      expect(@student.play_hooky).to eql '¯(ツ)/¯'
    end

    it 'check for correct name' do
      expect(@student.correct_name).to eql 'Mark'
    end
  end
end
