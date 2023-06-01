require './classes/rental'

describe Rental do
  rental = Rental.new('12-05-2023', 'Long Journey to School', 'Lanzz')
  it 'Should check if the rental has the appropriate date supplied' do
    expect(rental.date).to eq('12-05-2023')
  end
  it 'Should check if the rental has the appropriate renter supplied' do
    expect(rental.person).to eq('Lanzz')
  end
  it 'Should check if the rental has the appropriate bok rented' do
    expect(rental.book).to eq('Long Journey to School')
  end
end
