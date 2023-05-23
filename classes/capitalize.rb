require_relative 'decorator'

class Capitalize < Decorator
  def correct_name
    @nameable.upcase
  end
end

lanzz = Capitalize.new('lanzz')
puts lanzz.correct_name
