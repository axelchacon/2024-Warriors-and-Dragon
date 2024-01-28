require_relative "character"
require_relative "get_input"
class Player #yo como jugador
    attr_reader :character
    include GetInputable # por qué?
    def initialize(name, character_type, character_name)
      @name = name
      @character = Character.new(character_name,character_type)
    end
  
  def select_move
    move= get_input_options("Select a move to attack", @character.moves)
    @character.current_move =move
  end 


  class Bot <  Player # como bot
    def initialize #(name, character_type, character_name)
      bot_characteres= Catalog::CHARACTERS.select{|name, data| data[:type] == "bot"}
      options = bot_characteres.keys #["lockhead", "Dragon", ..]
      select_character = options.sample
      super("Dragon Master", select_character, select_character.capitalize)
    end
  end


   
  def select_move
    # bot_move= @character.moves.sample
    # @character.current_move =bot_move
    @character.current_move=@character.moves.sample
  end 