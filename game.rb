require_relative "catalog/characters" # forma para importar el archivo en ruby characters.rb desde la carpeta catalog
 # Automatiaciones de los empty?                     
 def get_input(prompt)
   input = ""
   while input.empty?
     puts prompt
     print "> "
     input = gets.chomp 
   end
 end

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
  #puts "#{character.downcase}" # devuelve el personaje , .downcase: Este método convierte toda la cadena a minúsculas.

end


# Imprime en terminal de manera automatiada lo de posibilidades  de esciger caracteres
def print_player_characters(options) # agregamos parámetros
   
    options.each_with_index do |option , index|
        puts "#{index +1}. #{option.capitalize}" #.capitalize: Este método convierte el primer carácter de una cadena a mayúsculas y el resto de la cadena a minúsculas.
    end
     print "> "
end

name = get_input("What's your name") 
character = select_character
character_name = get_input("Give your character a name:") 
puts "Name: #{name}"
puts "Character type: #{character}"
puts "Character name: #{character_name}"