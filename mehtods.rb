require 'colorize'

# def generate_question
#   @n1 = rand(20)
#   @n2 = rand(20)
#   @answer = @n1 + @n2
#   promt_for_ans
# end

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
    @current_player[:score] += 1
  else
    puts "nope"
    @current_player[:lives] -= 1
  end
end