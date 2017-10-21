#the CLI controller
class CelebrityBookClubs::CLI

  def call
    puts "Welcome to Celebrity Book Clubs!"
    list_clubs
    #book_menu
    #read_you_later
  end

  def list_clubs #method that will scrape club names
    puts <<-DOC
    1. Oprah’s Book Club
  	2. RW Book Club
  	3. Our Shared Shelf - Emma Watson
  	4. Belletrist - Emma Roberts
    DOC
    book_menu
  end

  def book_menu
    puts "Enter the number of the club to see what book or books they are reading this month. Feel free to type 'list' to see the list of clubs again or type 'exit' when you are done!"
    input = gets.strip.downcase
# I want the user to be able to enter a number and then the book that club is reading populates.
#need to figure out how to get each club when their number is entered to scrape from that specific site

      if input == "1"
        Books.get_books("oprah")
      elsif input == "2"
        Books.get_books("reese_witherspoon")
      elsif input == "3"
        Books.get_books("emma_watson")
      elsif input == "4"
        Books.get_books("emma_roberts")
      elsif input == "list"
        list_clubs
      elsif input == "exit"
        read_you_later
      else
        puts "Sorry I didn't quite understand, please try again"
        menu
      end
    end

  def read_you_later
    puts "See you again soon!"
  end
#need a Book class to house the get_books method
#no I want a class Clubs to go to the list of books then a class Book to grab the information from?

#get into Books and pull the individual books for the specific club with a method
#pulling my hair out now

  # def list_books
  #   @books = CelebrityBookClubs::Books.this_month
  # end

end
