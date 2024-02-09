module GetInputable #Buenas prácticas usando +able al final del module
def get_input(prompt)  #Paso función_número 1
    input = ""
    while input.empty?
      puts prompt
      print "> "
      input = gets.chomp 
    end
    input
end

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

def print_options(options) # agregamos parámetros  #el programa entrea aquí como paso 4
    options.each_with_index do |option , index|
        puts "#{index +1}. #{option.capitalize}" #.capitalize: Este método convierte el primer carácter de una cadena a mayúsculas y el resto de la cadena a minúsculas.
    end
end

end