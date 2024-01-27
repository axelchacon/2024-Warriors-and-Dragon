require_relative "catalog/characters" # forma para importar el archivo en ruby characters.rb desde la carpeta catalog
 # Automatiaciones de los empty? , el programa entrea aquí primero como paso 1 y al último  como paso5                   
 def get_input(prompt) 
   input = ""
   while input.empty?
     puts prompt
     print "> "
     input = gets.chomp 
   end
   input
 end
 
 # Automatiar las opciones y validaciones con una función
 def get_input_options(prompt, options) #el programa entrea aquí como paso 3
  input = ""
  until options.include?(input.downcase)
    puts prompt
    print_options(options) #el programa entrea aquí como paso 4
    print "> "
    input = gets.chomp
  end
  input.downcase
end

# Definene Caracter válido , 
def select_character #el programa entrea aquí como paso 2
    characters= Catalog::CHARACTERS.select{|name, data| data[:type] == "player"}
    valid_characters = characters.keys #[warrrior, magician]
    characters = get_input_options("Choose a Character:",valid_characters ) #el programa entrea aquí como paso 3
end

def print_options(options) # agregamos parámetros  #el programa entrea aquí como paso 4
    options.each_with_index do |option , index|
        puts "#{index +1}. #{option.capitalize}" #.capitalize: Este método convierte el primer carácter de una cadena a mayúsculas y el resto de la cadena a minúsculas.
    end
end


name = get_input("What's your name?")
character = select_character
character_name = get_input("Give your character a name:")
puts "Name: #{name}"
puts "Character type: #{character}"
puts "Character name: #{character_name}"