require_relative 'person'

class Teacher < Person
  def initialize(age = 0, name = 'Unknown', specialization = 'Unknown')
    super(name, age)
    @specialization = specialization
  end

  def can_use_services?
    true
  end
end
