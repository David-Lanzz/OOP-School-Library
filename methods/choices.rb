require 'json'

class Choices
  def initialize(app)
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
end
