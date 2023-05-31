require_relative 'app'
require_relative 'options'
require_relative 'choices'
require_relative 'returner'

class Main
  def initialize
    @books = Returner.new.read_books
    @people = Returner.new.read_people
    @rentals = Returner.new.read_rentals
    @app = App.new(@books, @people, @rentals)
  end

  def run
    loop do
      Options.new
      Choices.new(@app)
    end
  end

  def show
    print @books,@rentals,@people
  end
end


main = Main.new
main.run
