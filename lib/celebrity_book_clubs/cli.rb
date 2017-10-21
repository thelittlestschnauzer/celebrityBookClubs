#the CLI controller
class CelebrityBookClubs::CLI

  def call
    puts "Welcome to Celebrity Book Clubs!"
    list_clubs
    #book_menu
    #read_you_later
  end

  def list_clubs #method that will scrape club names
    puts "Welcome to Celebrity Book Clubs"
    puts <<-DOC
    1. Oprah’s Book Club
  	2. RW Book Club
  	3. Our Shared Shelf - Emma Watson
  	4. Belletrist - Emma Roberts
    DOC
    #@clubs = CelebrityBookClubs::Clubs
  end

  def book_menu
    input = nil
    while input != 'exit'
      puts "Enter the number of the club to see what book or books they are reading this month, type 'list' to see the list of clubs or type 'exit' when you are done!"
      input = gets.strip.downcase
      case input
      when "1"
        puts "Oprah's book : 'Behold the Dreamers' by Imbolo Mbue"
      when "2"
        puts "Reese Witherspoon's book : Slightly South of Simple by Kristy Woodson Harvey"
      when "3"
        puts "Emma Watson's book : Hunger: A Memoir of (My)Body by Roxanne Gay"
      when "4"
        puts "Emma Robert's book : Sex and Rage by Eve Babitz"
      when "list"
        list_clubs
      when "exit"
        read_you_later
      else
        puts "Sorry that was an invalid response, type 'list' and try again."
      end
    end
  end

  def read_you_later
    puts "See you again soon!"
  end

  def list_books
    @books = CelebrityBookClubs::Books.this_month
  end

end
