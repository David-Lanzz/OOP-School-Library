require_relative 'decorator'

class Trimmer < Decorator
  def correct_name
    super[0..9]
  end
end
