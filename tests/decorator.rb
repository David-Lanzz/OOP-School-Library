require "./classes/decorator.rb"
require "./classes/person.rb"

describe Decorator do
  person = Person.new("Lanzz",21,true)
  decorator = Decorator.new(person)
  it "Should expect decrator to be an instance of Decorator" do
    expect(decorator).to be_instance_of(Decorator)
  end
end
