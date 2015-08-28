class Person

attr_accessor :name, :lives, :score

def initialize(name,lives= 3,score = 0)
  @name = name
  @lives = lives
  @score = score
end


def gain_a_point
  @score += 1
end

def lose_live
  @lives -= 1
end

end

# def game_on
#   puts "Player 1 what is your name?"
#   player1 = Person.new(gets.chomp)
#   puts "Player2 what is your name?"
#   player2 = Person.new(gets.chomp)
# end

