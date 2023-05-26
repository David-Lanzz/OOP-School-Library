require_relative 'person'

class Student < Person
  attr_reader :classroom

  def initialize(name = 'Unknown', age = 0, parent_permission = false, classroom = 'Unknown')
    super(name, age, parent_permission)
    @classroom = classroom
  end

  def play_hooky
    '¯(ツ)/¯'
  end

  def classroom_association=(classroom)
    @classroom = classroom
    classroom.students.push(self) unless classroom.students.include?(self)
  end
end
