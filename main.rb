require './game'
require './player'
require './question'

player1 = Player.new
player2 = Player.new
players = [player1, player2]

game = Game.new
game.new_game(players)