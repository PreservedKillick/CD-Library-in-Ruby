require "./lib/CD_class.rb"
require "./lib/CD_info.rb"

system 'clear'

def main_menu
  puts "Main Menu"
  puts "Press 'a' to add a new cd to your library."
  puts "Press 'l' to list your current cds."
  puts "Press 's' to search for cds."
  puts "Press q to quit"
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

main_menu
