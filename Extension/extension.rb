class Library
  attr_accessor :books

  def initialize(title_name, student_name, due_date)

   @books = [ {
      title: title_name,
      rental_details: {
       student_name: student_name,
       date: due_date
      }
    } ]
  end

  # def getting_books()
  #     return @library
  # end

  def getting_information_from_title(book_title)
    for book in @books
      return book if book[:title] == book_title
    end
  end

  def getting_rental_details_from_title(book_title)
    for book in @books
      return book[:rental_details] if book[:title] == book_title
    end
  end

  def new_book(new_book_title)
    @books.push({
      title: new_book_title,
      rental_details: {
      student_name: "",
      date: ""
    }})
  end

  def update_rental_details(book_title, name, date)
    getting_rental_details_from_title(book_title)[:student_name]=name
    getting_rental_details_from_title(book_title)[:date]=date
    return getting_rental_details_from_title(book_title)
  end


end
