require 'json'
require_relative './show_menu'

class Creation
  include ShowMenu
  def initialize(people = [], book = [], rental = [])
    @book = book
    @people = people
    @rental = rental
  end

  def create_person
    print 'Do you want to create a student (1) or a teacher (2)? ..Please input number:  '
    option = gets.chomp.to_i

    case option
    when 1
      create_student
    when 2
      create_teacher
    else
      puts 'Please select 1 or 2 !'
    end
  end

  def create_book
    print 'Title: '
    title = gets.chomp
    print 'Author: '
    author = gets.chomp
    book = Book.new(title, author)
    book_data = { title: book.title, author: book.author }
    puts 'Book successfully created!'
    data_storage = get_data('books')
    data_storage.push(book_data)
    update_data('books', data_storage)
    show_menu
  end

  def create_rental
    puts 'Select a book from the list (Enter number)'
    @book.each_with_index { |item, i| puts "#{i}-- #{item.title}, #{item.author}" }
    index = gets.chomp.to_i
    book = @book[index]
    puts 'Select a person from the list (Enter number)'
    @people.each_with_index { |item, i| puts "#{i}- #{item.name}" }
    person_index = gets.chomp.to_i
    person = @people[person_index]
    print 'Date(yyyy/mm/dd): '
    date = gets.chomp
    rental = Rental.new(date, book, person)
    puts rental
    puts 'Rental created successfully'
    rental_data = { date: date, book_index: index, person_index: person_index }
    data_storage = get_data('rentals')
    data_storage.push(rental_data)
    update_data('rentals', data_storage)
    show_menu
  end

  private

  def create_student
    print 'Age: '
    age = gets.chomp.to_i
    print 'Name: '
    name = gets.chomp
    print 'Has parent permission? [Y/N]'
    permission = gets.chomp
    new_student = Student.new(age, permission, name)
    puts 'Student created successfully'
    student_data = { id: new_student.id, name: new_student.name, age: new_student.age, class: 'student' }
    data_storage = get_data('person')
    data_storage.push(student_data)
    update_data('person', data_storage)
    show_menu
  end

  def create_teacher
    print 'Age: '
    age = gets.chomp.to_i
    print 'Name: '
    name = gets.chomp
    print 'Specialization: '
    specialization = gets.chomp
    teacher = Teacher.new(age, specialization, name)
    puts 'Teacher created successfullly'
    teacher_data = { id: teacher.id, name: teacher.name, age: teacher.age, class: 'teacher' }
    data_storage = get_data('person')
    data_storage.push(teacher_data)
    update_data('person', data_storage)
    show_menu
  end
end
