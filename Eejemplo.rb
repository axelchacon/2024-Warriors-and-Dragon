
# character = ""
# while character.empty?
#     puts "Choose a character"
#     #    puts "1. warrior"
#     #    puts "2. magican"
#     puts "1. warrior"
#     puts "2. magician"
# #    print_player_characters
#      character = gets.chomp
#      if character == "" or character.upcase !="WARRIOR" and character.upcase != "MAGICIAN"  then
#         puts "Invalid character, try again"
#         character =""
#         next
#      else 
#         break
#     end
# end
# puts character

#  if character == "\n" or character.upper != "WARRIOR" and character.upper != "MAGICIAN"  then
# class Character
#     def initialize(name, type)
#       @name = name
#       @character = type
#     end
#   end

##############

# class Persona
#     # attr_accessor :nombre, :edad
#     def initialize(nombre, edad)
#       @nombre = nombre
#       @edad = edad
#     end
#     def saludar
#       puts "Hola, soy #{@nombre} y tengo #{@edad} años."
#     end
# end
#   # Crear una instancia de la clase Persona
#   persona1 = Persona.new("Juan", 25)
#   # Llamar al método saludar de la instancia
#   persona1.saludar
# p  persona1
#################



#   class Player
#     def initialize(name, character_type, characte_name)
#       @name = name
#       @character = Character.new(characte_name,character_type)
#     end
#   end
  
#   class Character
#     def initialize(name, type)
#       @name = name
#       @character = type
#     end
#   end
  
#   player = Player.new("Axel", "Warior", "Poder")
#   p player

# class Persona
#   attr_reader :nombre

#   def initialize(nombre)
#     @nombre = nombre
#   end
# end

# persona = Persona.new("Alice")
# puts persona.nombre  # Puedes acceder al valor
# persona.nombre = "Bob"


# def suma(a, b)
#   return a if a > b 
#   return b if b > a 
# end

# # Llamamos a la función y mostramos el resultado en la terminal
# puts suma(1, 2)


# def suma(a, b)
#   puts a if a > b 
#   puts b if b > a 
# end

# # Llamamos a la función y mostramos el resultado en la terminal
# suma(1, 2)

def suma(a, b)
  print a if a > b 
  print b if b > a 
end

# Llamamos a la función y mostramos el resultado en la terminal
suma(1, 2)