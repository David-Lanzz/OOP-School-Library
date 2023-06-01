require_relative 'decorator'

class Trimmer < Decorator
  attr_accessor :nameable

  def correct_name
    super[0..9]
  end
end
