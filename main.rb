require 'pry'
require './players'
require './mehtods'

def set_names
  puts "Player 1 what is your name?"
@p1[:name] = gets.chomp
  puts "Player 2 what is your name?"
@p2[:name] = gets.chomp

end

def game_on
while  @p1[:lives] >0 || @p2[:lives] >0
  puts "#{@p1[:name]} are you ready?"
  promt_for_ans(@p1)
  puts "#{@p2[:name]} are you ready?"
  promt_for_ans(@p2)
end
puts "Games over final score is #{@p1[:score]} for #{@p1[:name]} and #{@p2[:score]} for #{@p2[:name
]}"
end

pp set_names
pp game_on

binding.pry