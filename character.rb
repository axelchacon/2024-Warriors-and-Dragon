class Character # automatizado para extraer datos tanto del bot y player 
    attr_accessor :current_move  #nos permite hacer lo mismo de attr_reader más sobreescribir
    attr_reader :name, :experience, :moves #nos permite acceder a las propiedades como.nombre y hcaer pequeñas llamasdas usao #{@name}
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
#other es la instacnia del personaje tanto del bot o player
    def attack(other)
        hits?= @current_move[:accuracy] >= rand(1..100)
        if hits?
            other.receive_damage(@current_move[:power])
        else 
            puts "#{@name} failed to hit #{other.name} and didn't cause any damage"
        end   
    end

    def increase_experience(defeated_character)
        @experience += defeated_character.experience*0.2
      end 
  end
  