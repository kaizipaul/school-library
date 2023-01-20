require_relative './show_menu'

class Listings
  include ShowMenu
  def initialize(people = [], book = [], rental = [])
    @book = book
    @people = people
    @rental = rental
  end

  def list_books
    if @book.empty?
      puts 'No books available'
      show_menu
    end
    puts 'List of available books:'
    puts ''
    @book.each_with_index do |item, i|
      puts "#{i} Title: #{item.title}, Author: #{item.author}"
    end
    show_menu
  end

  def list_people
    if @people.empty?
      puts 'No people found today'
      show_menu
    end
    puts 'List of people:'
    puts ''
    @people.each_with_index do |item, i|
      puts "#{i}-- [#{item.class}] Name:#{item.name},  Age: #{item.age}"
    end
    show_menu
  end

  def list_rentals
    puts 'Select ID of any person (Please type the number of the ID)'
    @people.each { |item| puts "id: #{item.id}, Person: #{item.name}" }
    print 'Person id: '
    id = gets.chomp.to_i
    @rental.each do |item|
      puts "Date: #{item.date}, Book: #{item.book.title} by #{item.book.author}" if item.person.id.to_i == id
    end
    show_menu
  end
end
