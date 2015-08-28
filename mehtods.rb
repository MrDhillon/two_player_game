require 'colorize'

def player_creation
  puts "Player 1 what is your name?"
  @player1 = Person.new(gets.chomp)
  puts "Player2 what is your name?"
  @player2 = Person.new(gets.chomp)
end

def promt_for_ans(player)
  n1 = rand(20)
  n2 = rand(20)
  @current_player = player
  @answer = n1 + n2
  puts "what is #{n1} + #{n2} equal to?"
  player_answer = gets.chomp.to_i
  verify_answer(player_answer)
end

def verify_answer(answer_p)
  if @answer == answer_p
    puts "you got the right answer"
    @current_player.gain_a_point
  else
    puts "nope"
    @current_player.lose_live
  end
end