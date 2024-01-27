require_relative "catalog/characters" # forma para importar el archivo en ruby characters.rb desde la carpeta catalog
 # Definene Caracter válido
def select_character
    character = ""
    characters= Catalog::CHARACTERS.select{|name, data| data[:type] == "player"}
    valid_characters = characters.keys #[warrrior, magician]
  until valid_characters.include?(character.downcase)
     puts "Choose a character"
     print_player_characters(valid_characters)
    #  character = gets.chomp.downcase
     character = gets.chomp
     unless valid_characters.include?(character.downcase)
        puts "Invalid option !!"
     end
   end
   character.downcase
  puts "#{character.downcase}" # devuelve el personaje , .downcase: Este método convierte toda la cadena a minúsculas.

end


# Imprime en terminal de manera automatiada lo de posibilidades  de esciger caracteres
def print_player_characters (options) # agregamos parámetros
    # characters= Catalog::CHARACTERS.select{|name, data| data[:type] == "player"} # eliminamos esto porque se repite "elect_character"
    # names= characters.keys # ["warrior", "magician"] # eliminamos esto porque se repite "elect_character"
    # pp characters
    options.each_with_index do |option , index|
        puts "#{index +1}. #{option.capitalize}" #.capitalize: Este método convierte el primer carácter de una cadena a mayúsculas y el resto de la cadena a minúsculas.
    end
     print "> "
end

######Part1 
name = ""
while name.empty?
   puts "What's your name"
   print "> "
   name = gets.chomp 
  #puts "Imput: #{name}"  
end
######Part2 2

character= select_character
# puts Catalog::CHARACTERS  # verificamos si importamos bien
# pp Catalog::CHARACTERS   # verificamos si importamos bien y si lo quieres más ordenado
#filtered_hash = hash.select { |key, value| value >2}
