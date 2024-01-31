class Battle 
    def initialize(player, bot)
        @player = player
        @bot = bot
        @player_char= @player.character
        @bot_char= @bot.character
    end

    def start
        @player.character.prepare_to_battle
        @bot.character.prepare_to_battle
        @player.select_move
        @bot.select_move 
        fisrt= @player_char.curent_move[:priority]
    end
 
end