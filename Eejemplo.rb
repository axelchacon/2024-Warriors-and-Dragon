
character = ""
while character.empty?
    puts "Choose a character"
    #    puts "1. warrior"
    #    puts "2. magican"
    puts "1. warrior"
    puts "2. magician"
#    print_player_characters
     character = gets.chomp
     if character == "" or character.upcase !="WARRIOR" and character.upcase != "MAGICIAN"  then
        puts "Invalid character, try again"
        character =""
        next
     else 
        break
    end
end
puts character

#  if character == "\n" or character.upper != "WARRIOR" and character.upper != "MAGICIAN"  then