require "./classes/teacher.rb"

describe Teacher do
  teacher = Teacher.new(144,"Dracula","Vampire")
  unknown = Teacher.new(21,"You")
  it "Should expect teacher to be an instance of class Teacher" do
    expect(teacher).to be_instance_of(Teacher)
  end
  it 'Should expect that when a specialization is not specified on creation, the default specialization is "Unknown"' do
    expect(unknown.specialization).to eq("Unknown")
  end
  it "Should expect the teacher name to be correspond with what was inputed" do
    expect(teacher.name).to eq("Dracula")
  end
end
