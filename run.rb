require_relative './library_menu'
require_relative './options'

module Run
  include LibraryMenu
  include Options
  def run
    puts library_menu

    input = gets.chomp
    if input <= '6'
      options(input)
    elsif input == '7'
      puts 'Thanks for using our app!'
    else
      puts 'Please select a number from 1 - 7'
    end
  end
end
