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
  
    def prepare_to_battle
      @health = @max_health
      @curent_move = nill
    end 
    
    
    def receive_damage(damage)
      @health -= damage
    end 
    
    def fainted?
      @health.positive?
    end 
    
  
  end
  