require './player'

class Game
  def new_game(players)
    new_question = Question.new
    puts "----- NEW TURN -----"
    puts "#{players[0].long}: #{new_question.qs}"
    print "please enter answer>"
    answer = $stdin.gets.chomp
    if answer.to_i == new_question.num1 + new_question.num2  
      puts "#{players[0].long}: YES! You are correct."
    else 
      players[0].lose_life
      puts "#{players[0].long}: Seriously? No!"
    end
    if players[0].lifes == 0
      puts "#{players[1].long} wins with a score of #{players[1].present_score}"
      "----- GAME OVER -----"
      "Good bye!"
    else
      puts "#{players[0].short}: #{players[0].present_score} vs #{players[1].short}: #{players[1].present_score}" 
      players.reverse!
      new_game(players)
    end
  end
end