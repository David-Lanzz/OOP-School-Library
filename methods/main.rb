require_relative 'app'

class Main
  def initialize
    @app = App.new
  end

  def options
    puts '1 - List all books'
    puts '2 - List all people'
    puts '3 - Create a person'
    puts '4 - Create a book'
    puts '5 - Create a rental'
    puts '6 - List all rentals for a given person id'
    puts '7 - Exit'
  end

  def options_input(app)
    input = gets.chomp
    case input.to_i
    when 1 then app.all_books
    when 2 then app.all_people
    when 3 then app.new_person
    when 4 then app.new_book
    when 5 then app.new_rental
    when 6 then app.list_rentals
    when 7
      puts 'Thank you for using School Library App!'
      exit
    end
  end

  def run
    loop do
      options
      options_input(@app)
    end
  end
end

main = Main.new
main.run
