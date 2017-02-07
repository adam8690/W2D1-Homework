require('minitest/autorun')
require('minitest/rg')
require_relative('../library.rb')

class TestLibrary < MiniTest::Test

def setup 

  @books = [
  { 
    title: "lord_of_the_rings",
        rental_details: { 
        student_name: "Jeff", 
        date: "01/12/16"
      }
    },
    {
      title: "harry_potter",
        rental_details: { 
        student_name: "Adam", 
        date: "08/06/2016"
      }
    }

]

end


def test_harry_potter
books = @books[1][:title]
assert_equal("harry_potter", books)
end

def test_list_all_books 
  titles = @books.list
end


end