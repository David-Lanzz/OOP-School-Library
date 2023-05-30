require_relative 'app'
require_relative 'options'
require_relative 'choices'

class Main
  def initialize
    @app = App.new
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
