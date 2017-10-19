class CelebrityBookClubs::CLI

  def call
    puts "Welcome to Celebrity Book Clubs"
    list_clubs
    list_books
  end

  def list_clubs #method that will scrape club names
    puts <<-DOC
    1. Oprah’s Book Club
  	2. RW Book Club
  	3. Our Shared Shelf - Emma Watson
  	4. Belletrist - Emma Roberts
  	5. between two books - Florence Welch
    DOC
  end

  def list_books
    puts puts "Enter the number of the club to see what book or books they are reading this month, type 'list' to see the list of clubs or type 'exit' when you are done!"
    input = nil
    while input != 'exit'
    input = gets.strip.downcase
      case input
      when "1"
        puts "Oprah's books"
      when "2"
        puts "Reese Witherspoon's books"
      when "3"
        puts "Emma's Watson's books"
      when "4"
        puts "Emma Robert's books"
      when "5"
        puts "Florence Welch's books"
      when "list"
        list_clubs
      when "exit"
        read_you_later
      else
        puts "Sorry that was an invalid response, try again."
      end
    end
  end

  def read_you_later
    puts "See you again soon!"
  end


end
