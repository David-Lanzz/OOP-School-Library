require_relative '../classes/person'
require_relative '../classes/teacher'
require_relative '../classes/students'
require_relative '../classes/book'
require_relative '../classes/rental'
require_relative '../storage/preservation'

class App
  attr_accessor :books, :people

  def initialize(books, people, rentals)
    @books = books
    @people = people
    @rentals = rentals
  end

  def all_books
    puts 'List of books:'
    @books.each do |book|
      puts "Title: #{book['title'].capitalize}, Author: #{book['author'].capitalize}"
    end
  end

  def all_people
    puts 'All people:'
    @people.each do |person|
      puts "name: #{person['name']}, age: #{person['age']}"
      puts "\n"
    end
  end

  def new_person
    puts 'Do you want to create a student (1) or a teacher (2)? [Input the number]'
    input = gets.chomp
    if input == '1'
      new_student
    elsif input == '2'
      new_teacher
    else
      raise 'Please enter a number between 1 and 2 to create a student or teacher respectively'
    end
  end

  def new_book
    puts 'Book title?'
    title = gets.chomp
    puts 'Book author?'
    author = gets.chomp
    newest_book = Book.new(title, author)
    newestbooktitle = newest_book.title
    newestbookauthor = newest_book.author
    @books << { 'title' => newestbooktitle, 'author' => newestbookauthor }
    Preservation.new.preserve_books(@books)
    puts 'Book created successfully'
  end

  def new_teacher
    puts 'Age?'
    age = gets.chomp
    puts 'Name?'
    name = gets.chomp
    puts 'specialization?'
    specialization = gets.chomp
    newest_teacher = Teacher.new(age, name, specialization)
    newest_teachername = newest_teacher.name
    newest_teacherage = newest_teacher.age
    newest_teacherid = newest_teacher.id
    newest_teacherclass = newest_teacher.class
    @people << { 'name' => newest_teachername, 'age' => newest_teacherage, 'id' => newest_teacherid.to_s,
                 'class' => newest_teacherclass }
    Preservation.new.preserve_people(@people)
    puts 'Teacher created successfully'
  end

  def new_student
    puts 'Age?'
    age = gets.chomp
    puts 'Name?'
    name = gets.chomp
    puts 'Has parent permission[Y/N]?'
    parent_permission_input = gets.chomp.upcase
    new_student = Student.new(name, age, parent_permission_input)
    new_studentname = new_student.name
    new_studentage = new_student.age
    new_studentid = new_student.id
    new_studentclass = new_student.class
    @people << { 'name' => new_studentname, 'age' => new_studentage, 'id' => new_studentid.to_s,
                 'class' => new_studentclass }
    Preservation.new.preserve_people(@people)
    puts 'Student created successfully'
  end

  def new_rental
    puts 'Select a book from the following list by number:'
    @books.each_with_index do |book, index|
      puts "(#{index}) Title: #{book['title']}"
    end
    book_number = gets.chomp.to_i
    if book_number.negative? || book_number > books.length
      puts 'Invalid book selection'
      return
    end
    selected_book = books[book_number]
    puts 'Select a person from the following list by number (not id)'
    @people.each_with_index do |person, index|
      puts "#{index}) [#{person['class']}] Name: #{person['name']}, ID: #{person['id']}, Age: #{person['age']}"
    end
    number = gets.chomp.to_i
    continue_rental_registration(number, selected_book)
  end

  def continue_rental_registration(number, selected_book)
    if number.negative? || number > @people.length
      puts 'Invalid person selection'
      return
    end
    selected_person = @people[number]
    puts 'Date: '
    date = gets.chomp
    rental = Rental.new(date, selected_book, selected_person)
    rentaldate = rental.date
    rentalbook = rental.book['title']
    rentalperson = rental.person['name']
    rentalauthor = rental.book['author']
    @rentals << { 'date' => rentaldate, 'book' => rentalbook, 'person' => rentalperson, 'author' => rentalauthor }
    Preservation.new.preserve_rentals(@rentals)
    puts 'Rental created successfully'
  end

  def list_rentals
    puts 'ID of person:'
    requested_id = gets.chomp.to_i
    person = @people.find do |p|
      p['id'].to_i == requested_id
    end
    if person.nil?
      puts "person with requested id: #{requested_id} not found"
      return
    end
    puts 'Rentals: '
    rental_for_person = @rentals.select do |rental|
      rental['person'] == person['name']
    end
    rental_for_person.each do |rental|
      puts "Date: #{rental['date']}, Book: #{rental['book']} by #{rental['author']}"
    end
  end
end
