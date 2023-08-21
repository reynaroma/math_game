require_relative 'game'
require_relative 'question'
require_relative 'player'

puts "WELCOME TO THE MATH GAME!"
print "Player 1 enter your name: "
player1_name = gets.chomp
player1 = Player.new(player1_name)

print "Player 2 enter your name: "
player2_name = gets.chomp
player2 = Player.new(player2_name)

game = Game.new(player1, player2)
game.play