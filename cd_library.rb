require "./lib/CD_class.rb"
require "./lib/model.rb"

system 'clear'

def main_menu
  puts "Main Menu"
  puts "Press 'a' to add a new cd to your library."
  puts "Press 'l' to list your current cds."
  puts "Press 's' to search for cds."
  puts "Press 'q' to quit"
  main_choice = gets.chomp.to_s
  case main_choice
  when 'a'
    add_cds
  when 'l'
    list_cds
  when 's'
    search_cds
  when 'q'
    exit
  else
    puts "That was not a valid entry. Please try again."
    main_menu
  end
end

def add_cds
  system "clear"
  puts "Add CDs"
  puts "\n\nWhat is the title of your CD?"
  title_input = gets.chomp.to_s
  puts "\n\nWho is the artist of this album?\n\n"
  name_input = gets.chomp.to_s
  new_album = Album.new(title_input)
  new_artist = Artist.new(name_input)
  new_cd = CD.create({:artist => new_artist, :album => new_album})
  puts "\n\nThank you! #{title_input} has been added to your library."
  puts "\n\nWould you like to add another CD? y/n"
  add_again_input = gets.chomp.to_s
  case add_again_input
  when 'y'
    add_cds
  when 'n'
    main_menu
  end
end

def list_cds
  system "clear"
  puts "*****Here are the CDs in your library*****\n\n"
  CD.all.each do |cd|
    puts "#{cd.album[0].value}"
    puts "  by"
    cd.artist.each {|artist| puts artist.value}
    puts "\n"
  end
  puts "\n\nPress 'a' if you would like to add another CD to your library."
  puts "\nPress 'x' if you would like to exit your CD library."
  list_input = gets.chomp.to_s
  case list_input
  when 'a'
    add_cds
  when 'q'
    exit
  else
    main_menu
  end
end

def search
  system "clear"
  puts "Press 'a' to search by album"
  puts "Press 'b' to search by artist"
  search_input = gets.chomp.to_s
  case search_input
  when 'a'

  when 'b'


end

main_menu
