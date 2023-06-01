require './classes/book'
require './classes/person'

describe Book do
  book = Book.new('Rich Dad Poor Dad', 'Robert Kiyosaki')
  person = Person.new('Lanzz', 21, true)

  it 'Should check if the book title was inserted correctly' do
    expect(book.title).to eq('Rich Dad Poor Dad')
  end
  it 'Should check if the book author was inserted correctly' do
    expect(book.author).to eq('Robert Kiyosaki')
  end

  book.add_rental(person, '2023-1-06')
  it 'Check if the rental for the book is not empty' do
    expect(book.rentals).not_to be_empty
  end
end
