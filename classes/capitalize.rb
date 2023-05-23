require_relative 'decorator'

class Capitalize < Decorator
  def correct_name
    @nameable.upcase
  end
end

