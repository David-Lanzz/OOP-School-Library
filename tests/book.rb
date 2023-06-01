require "./classes/book.rb"

describe Book do
book = Book.new("Rich Dad Poor Dad","Robert Kiyosaki")

it "Should check if the book title was inserted correctly" do
expect(book.title).to eq("Rich Dad Poor Dad")
end
it "Should check if the book author was inserted correctly" do
expect(book.author).to eq("Robert Kiyosaki")
end
end
