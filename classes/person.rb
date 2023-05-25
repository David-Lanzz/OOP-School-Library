require_relative 'nameable'
require_relative 'capitalize'
require_relative 'trimmer'

class Person < Nameable
  attr_accessor :name, :age
  attr_reader :id

  def initialize(age, name = 'Unknown', parent_permission: true)
    @name = name
    @age = age
    @parent_permission = parent_permission
    @rentals = []
    super()
  end

  def can_use_services?
    @age >= 18 || @parent_permission == true
  end

  def correct_name
    @name
  end

  private

  def of_age?
    @age >= 18
  end
end
