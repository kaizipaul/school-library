require_relative '../classroom'
require_relative '../student'

describe Classroom do
  context 'Given an instance of a classroom' do
    before :each do
      @classroom = Classroom.new('my class')
    end

    it 'return a new classroom' do
      expect(@classroom).to be_instance_of Classroom
    end

    it 'add a new student to class' do
      student = Student.new(12, 'class', 'Mark')
      @classroom.add_student(student)
      expect(@classroom.students.length).to eql 1
    end
  end
end
