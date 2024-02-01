require_relative "catalog/characters" # forma para importar el archivo en ruby characters.rb desde la carpeta catalog
require_relative "get_input"
require_relative "player"
require_relative "battle"
#rubocop:disable Style/MixinUsage
include GetInputable
#rubocop:disable Style/MixinUsage

# Definene Caracter válido , 
def select_character #el programa entrea aquí como paso 2
    characters= Catalog::CHARACTERS.select{|name, data| data[:type] == "player"}
    valid_characters = characters.keys #[warrrior, magician]
    characters = get_input_options("Choose a Character:",valid_characters ) #el programa entrea aquí como paso 3
end


name = get_input("What's your name?")
character = select_character
character_name = get_input("Give your character a name:")
# Emepzamos a automatiar los tres "puts" de abajo" con clases. Esto nos va a servir para otras peticiones del ejerciocio por lo que podemos reutilizarlos
# puts "Name: #{name}"
# puts "Character type: #{character}"
# puts "Character name: #{character_name}"
player = Player.new(name, character, character_name)
bot = Bot.new
battle = Battle.new(player, bot)
battle.start