require './classes/person'

describe Person do
  person = Person.new('Lanzz', 21, true)

  it 'Should check if person is an instance of the class Person' do
    expect(person).to be_instance_of(Person)
  end

  it 'Should check if person has the correct name key' do
    expect(person.name).to eq('Lanzz')
  end

  it 'Should check if person has the correct age key' do
    expect(person.age).to eq(21)
  end

  it 'Should check if person has the correct parent permission key' do
    expect(person.parent_permission).to eq(true)
  end
end
