class Battle 
    def initialize(player, bot)
        @player = player
        @bot = bot
    end

    def start
        @player.character.prepare_to_battle
        @bot.character.prepare_to_battle
        @player.select_move
        @bot.select_move 
    end
 
end
