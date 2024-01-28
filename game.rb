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
# Emepzamos a automatiar los tres "puts" de abajo" con clases. Esto nos va a servir para otras peticiones del ejerciocio por lo que podemos reutilizarlos
# puts "Name: #{name}"
# puts "Character type: #{character}"
# puts "Character name: #{character_name}"
class Player #yo como jugador
  def initialize(name, character_type, character_name)
    @name = name
    @character = Character.new(character_name,character_type)
  end
end

class Bot <  Player # como bot
  def initialize #(name, character_type, character_name)
    bot_characteres= Catalog::CHARACTERS.select{|name, data| data[:type] == "bot"}
    options = bot_characteres.keys #["lockhead", "Dragon", ..]
    select_character = options.sample
    super("Dragon Master", select_character, select_character.capitalize)
  end
end

class Character # automatizado para extraer datos tanto del bot y player 
  def initialize(name, type)
    char_details= Catalog::CHARACTERS[type] # es type sin : porque es un string
    @name = name
    @type = type
    @experience= char_details[:base_exp]
    @max_health= char_details[:base_stats][:hp]
    @speed = char_details[:base_stats][:speed]
    @moves= char_details[:moves]
    @health= nil
    @current_move= nil
  end
end

# def prepare_to_battle
#   @health = @max_health
#   @curent_move = nill
# end 


# def receive_damage(damage)
#   @health = @max_health
#   @curent_move = nill
# end 



# def prepare_to_battle
#   @health = @max_health
#   @curent_move = nill
# end 


player = Player.new(name, character, character_name)
p player
bot = Bot.new
p bot