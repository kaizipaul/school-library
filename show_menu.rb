require_relative './run'

module ShowMenu
  include Run
  def show_menu
    puts ''
    print 'Press Enter to go back to menu'
    gets.chomp
    puts ''
    run
  end
end
