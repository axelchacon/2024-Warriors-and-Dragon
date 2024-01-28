require_relative "character"
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