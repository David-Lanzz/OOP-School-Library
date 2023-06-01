require "./classes/classroom.rb"
require "./classes/students.rb"

describe Classroom do
  classroom = Classroom.new("Grade 4")
  student = Student.new("Lanzz",21,true)
  classroom.add_student(student)
  it "Should check if a new classroom was created" do
    expect(classroom).to be_instance_of(Classroom)
  end
  it "Should expect a new student to be added to classroom" do
    expect(classroom.students[0].name).to eq("Lanzz")
    end
end
