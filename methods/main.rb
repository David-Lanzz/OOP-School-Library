require_relative 'app'
require_relative 'options'
require_relative 'choices'
require_relative '../storage/preservation'
require_relative 'returner'

class Main
  def initialize
    @books = Returner.new.preservedbooks
    @people = Returner.new.preservedpeople
    @rentals = Returner.new.preservedrentals
    @app = App.new(@books, @people, @rentals)
  end

  def run
    loop do
      Options.new
      Choices.new(@app)
    end
  end
end

main = Main.new
main.run
