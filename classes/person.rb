class Person
  attr_accessor :name, :age
  attr_reader :id

  def initialize(age, name = 'Unknown', parent_permission: true)
    @name = name
    @age = age
    @parent_permission = parent_permission
  end

  def can_use_services?
    @age >= 18 || @parent_permission == true
  end

  private

  def of_age?
    @age >= 18
  end
end
