require_relative 'decorator'

class Capitalize < Decorator
  def correct_name
    super.upcase
  end
end
