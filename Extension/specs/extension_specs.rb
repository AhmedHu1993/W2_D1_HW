require('minitest/autorun')
require('minitest/rg')
require_relative('../extension')

class TestStudent < MiniTest::Test

  # def test_getter_for_books()
  #   library = Library.new
  #   assert_equal([{
  #      title: "lord_of_the_rings",
  #      rental_details: {
  #       student_name: "Jeff",
  #       date: "01/12/16"
  #      }
  #    }],library.getting_books())
  # end

  def test_getting_all_book_information_from_title()
    library = Library.new("lord_of_the_rings", "Jeff", "01/12/16")
    assert_equal({
       title: "lord_of_the_rings",
       rental_details: {
        student_name: "Jeff",
        date: "01/12/16"
       }
     },library.getting_information_from_title("lord_of_the_rings"))
  end

  def test_getting_rental_details_from_title()
    library = Library.new("lord_of_the_rings", "Jeff", "01/12/16")
    assert_equal({
     student_name: "Jeff",
     date: "01/12/16"
    },library.getting_rental_details_from_title("lord_of_the_rings"))
  end

  def test_add_new_book_by_title()
    library = Library.new("lord_of_the_rings", "Jeff", "01/12/16")
    library.new_book('Oliver_Twist')
    assert_equal(2,library.books.length)
  end

  def test_changing_rental_details_by_book_title()
    library = Library.new("lord_of_the_rings", "Jeff", "01/12/16")
    library.update_rental_details("lord_of_the_rings", "Menna","01/09/19")
    assert_equal({
     student_name: "Menna",
     date: "01/09/19"
    },library.getting_rental_details_from_title("lord_of_the_rings"))
  end
end
