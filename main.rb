require 'pry'
require './person.rb'
require './mehtods'



def game_on
player_creation
  while  @player1.lives >0 || @player2.lives >0
    puts "#{@player1.name} are you ready?"
    promt_for_ans(@player1)
    puts "#{@player2.name} are you ready?"
    promt_for_ans(@player2)
  end
puts "Games over final score is #{@player1.score} for #{@player1.name}
and #{@player2.score} for #{@player2.name}"
end

pp game_on

binding.pry