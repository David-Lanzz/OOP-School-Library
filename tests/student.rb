require "./classes/students.rb"

describe Student do
  student = Student.new("Lanzz",21,true)

  it "Should check if student is an instance of the class Student" do
    expect(student).to be_instance_of(Student)
  end

  it "Should check if student has the correct name key" do
    expect(student.name).to eq("Lanzz")
  end

  it "Should check if student has the correct age key" do
    expect(student.age).to eq(21)
  end

  it "Should check if student has the correct parent permission key" do
    expect(student.parent_permission).to eq(true)
  end
end
