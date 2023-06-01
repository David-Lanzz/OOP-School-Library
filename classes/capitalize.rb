require_relative 'decorator'

class Capitalize < Decorator
  def correct_name
    super.capitalize
  end
end
