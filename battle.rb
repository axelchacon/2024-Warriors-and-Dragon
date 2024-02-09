class Battle 
    def initialize(player, bot)
        @player = player
        @bot = bot
        @player_char= @player.character
        @bot_char= @bot.character
    end
    def battle_loop(player_char, bot_char)
        until player_char.fainted? || bot_char.fainted? # les quité el @
            @player.select_move
            @bot.select_move
            first = select_first(player_char, bot_char) ####### Ojo: Cambién el select_character a select_first y les quité a los parámteros el @
            second = first == player_char ? bot_char : player_char #les quité el arroba @
            puts "--------------------"
            first.attack(second) #
            second.attack(first) unless second.fainted? # unless = if !()
            puts "--------------------"
        end
    end


    def start
        @player_char.prepare_to_battle
        @bot_char.prepare_to_battle
        puts "--------------------"
        puts "#{@player.name} challenges #{@bot.name} to a battle."
        puts "#{@player.name} uses #{@player_char.name}"
        puts "#{@bot.name} uses #{@bot_char.name}"
        puts "--------------------"
        battle_loop(@player_char, @bot_char)
        winner = @player_char.fainted? ? @bot_char : @player_char
        loser = winner == @player_char ? @bot_char : @player_char
        winner.increase_experience(loser)
        puts "#{winner.name} WINS! They experience reached #{winner.experience} points."    
    end
    # def select_first(player_char, bot_char)
    #     @player.select_move
    #     @bot.select_move 
    #     fisrt= @player_char.curent_move[:priority]
    #     if @player_char.curent_move[:priority] > @bot_char.curent_move[:priority]
    #         player_char
    #     elsif @bot_char.curent_move[:priority] > @player_char.curent_move[:priority]
    #         bot_char
    #     elsif player_char.speed > bot_char.speed
    #         player_char
    #     elsif bot_char.speed > player_char.speed
    #         bot_char
    #     else 
    #         [player_char, bot_char].sample
    #     end
    # end
    # lo de arriba el selec_first lo reemplao a lo de abajo
    def select_first(player_char, bot_char)
        return player_char if player_char.current_move[:priority] > bot_char.current_move[:priority]
    
        return bot_char if bot_char.current_move[:priority] > player_char.current_move[:priority]
    
        return player_char if player_char.speed > bot_char.speed
    
        return bot_char if bot_char.speed > player_char.speed
    
        [player_char, bot_char].sample
      end
end