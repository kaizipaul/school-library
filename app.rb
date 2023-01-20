require_relative './student'
require_relative './teacher'
require_relative './rental'
require_relative './book'
require_relative './show_menu'
require_relative './creation'
require_relative 'listings'

class App
  include ShowMenu
  attr_reader :book, :people, :rental

  def initialize
    @book = show_books
    @people = show_people
    @rental = show_rentals(@book, @people)
  end
end
