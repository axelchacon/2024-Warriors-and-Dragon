require_relative "catalog/characters" # forma para importar el archivo en ruby characters.rb desde la carpeta catalog
require_relative "get_input"

include GetInputable

# Definene Caracter válido , 
def select_character #el programa entrea aquí como paso 2
    characters= Catalog::CHARACTERS.select{|name, data| data[:type] == "player"}
    valid_characters = characters.keys #[warrrior, magician]
    characters = get_input_options("Choose a Character:",valid_characters ) #el programa entrea aquí como paso 3
end


name = get_input("What's your name?")
character = select_character
character_name = get_input("Give your character a name:")
puts "Name: #{name}"
puts "Character type: #{character}"
puts "Character name: #{character_name}"