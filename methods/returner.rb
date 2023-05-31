require 'json'
class Returner
  attr_accessor :preservedbooks, :preservedpeople, :preservedrentals

  def initialize
    File.open('./data/books.json', 'r') do |file|
      bookfile = file.readlines
     puts JSON.parse(bookfile)

      @preservedbooks = bookfile
    end
    File.open('./data/rentals.json', 'r') do |file|
      rentalfile = file.readlines
      @preservedrentals = rentalfile
    end
    File.open('./data/people.json', 'r') do |file|
      peoplefile = file.readlines
      @preservedpeople = peoplefile
    end
  end
end

lanzz = Returner.new
puts lanzz.preservedbooks
