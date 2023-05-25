require_relative "app.rb"

def main
app = App.new()

choices = {
  '1' => :all_books,
  '2' => :all_people,
  '3' => :new_person,
  '4' => :new_book,
  '5' => :new_rental,
  '6' => :list_rentals
}
options = [
  'List all books',
  'List all rentals',
  'Create a new person',
  'Create a new book',
  'Create a new rental',
  'List all rentals for a given person ID',
  'Exit'
 ]
puts "select an option"
options.each_with_index{|option,index|
puts "#{index + 1}) #{option}"
}
choice = gets.chomp
handle_choices(app,choice)
end

def handle_choices(app,choice)
  case choice
  when '1'
    app.all_books
    main
  when '2'
    app.all_people
    main
  when '3'
    app.new_person
    main
  when '4'
    app.new_book
    main
  when '5'
    app.new_rental
    main
  when '6'
    app.list_rentals
    main
  end
end


main
