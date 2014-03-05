require "readline"
require "pp"
require './a_game'

game = AGame.new
right_number_arr = game.create_number
input_count = 0
while buf = Readline.readline(">> ", true)
  input_count += 1

  v_result = game.validate buf
  unless v_result[:result]
    pp v_result[:msg]
    break if input_count==6
  end

  a_result = game.analysis(buf, right_number_arr)
  if a_result[:xx]==4
    @result = true
    break
  end

  pp " --> X#{a_result[:xx]}Y#{a_result[:yy]}"
  break if input_count==6
end

if @result
  pp 'YOU WIN!'
else
  pp "GAME OVER! right number: #{right_number_arr.join}"
end
