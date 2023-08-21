class Game
  def initialize(player1, player2)
    @player1 = player1
    @player2 = player2
    @current_player = @player1
  end

  def play
    while @player1.has_lives? && @player2.has_lives?
      new_turn
      question = Question.new
      puts "#{@current_player.name}, it's your turn!"
      question.ask
      user_answer = gets.chomp.to_i
      if question.correct?(user_answer)
        puts "YES! You are correct."
        @current_player.increase_score(1)
      else
        puts "Seriously? No!"
        @current_player.decrement_lives
      end
      print_scores
      switch_player
    end
  end_game
  end

  def new_turn
    puts "---- NEW TURN ----"
  end

  def print_scores
    puts "#{@player1.name}: #{@player1.lives}/#{@player1.total_lives} vs #{@player2.lives}/#{@player2.total_lives}"
  end

  def switch_player
    @current_player =  (@current_player == @player1) ? @player2 : @player1
  end

  def end_game
    puts "----- GAME OVER -----"
    winner = @player1.score > @player2.score ? @player1 : @player2
    puts "#{winner.name} wins with a score of #{winner.lives}/#{winner.total_lives}"
    puts "Goodbye!"
  end
end