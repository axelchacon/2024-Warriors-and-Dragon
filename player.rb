require_relative "character"
require_relative "get_input"
require_relative "catalog/moves"
class Player #yo como jugador
    attr_reader :character, :name
    include GetInputable # por qué?porque get_input.b está en un módulo
    def initialize(name, character_type, character_name)
      @name = name
      @character = Character.new(character_name,character_type)
    end
    def select_move
      move= get_input_options("Select a move to attack", @character.moves)
      @character.current_move =Catalog::MOVES[move] # este es current_move que buscan del charactter.rb
    end 
end
  

  class Bot <  Player # como bot
    def initialize #(name, character_type, character_name)
      bot_characteres= Catalog::CHARACTERS.select{|name, data| data[:type] == "bot"}
      options = bot_characteres.keys #["lockhead", "Dragon", ..]
      select_character = options.sample
      super("Dragon Master", select_character, select_character.capitalize)
    end
    def select_move
      move= @character.moves.sample
      # @character.current_move =bot_move
      @character.current_move= Catalog::MOVES[move]
    end 
  end

# player = Player.new("Testino", "warrior", "Kratos")
# player.select_move
# p player
# bot = Bot.new
# bot.select_move
# p bot
   
