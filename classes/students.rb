require_relative 'person'

class Student < Person
  attr_reader :classroom

  def initialize(classroom)
    super
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
