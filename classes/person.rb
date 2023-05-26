require_relative 'nameable'
require_relative 'capitalize'
require_relative 'trimmer'
require_relative 'rental'

class Person < Nameable
  attr_accessor :name, :age, :rentals, :parent_permission
  attr_reader :id

  def initialize(name = 'Unknown', age = 0, parent_permission = false)
    super()
    @id = Random.rand(1..1000)
    @name = name
    @age = age
    @parent_permission = parent_permission
    @rentals = []
  end

  def can_use_services?
    @age >= 18 || @parent_permission == true
  end

  def correct_name
    @name
  end

  def add_rentals(book, date)
    Rental.new(date, book, self)
  end

  private

  def of_age?
    @age >= 18
  end
end
