class RockPaperScissors

  # Exceptions this class can raise:
  class NoSuchStrategyError < StandardError; end

  def self.winner(player1, player2)
    player = Array.new(2) {Array.new(2)}
    
    # Validating using regex
    rgx = /^\bR\b|\bP\b|\bS\b/
    if rgx.match(player1[1]) == nil || rgx.match(player2[1]) == nil
      puts player1[1]
        raise NoSuchStrategyError, "Strategy must be one of R,P,S"
    end
    
    if player1[1] == player2[1]
        return player1
    elsif player1[1] == 'P' && player2[1] == "S"
      return player2
    elsif player1[1] == 'S' && player2[1] == "P"
      return player1      
    elsif player1[1] == 'R' && player2[1] == "S"
        return player1
    elsif player1[1] == 'S' && player2[1] == "R"
        return player2        
    elsif player1[1] == 'R' && player2[1] == "P"
        return player2
    elsif player1[1] == 'P' && player2[1] == "R"
        return player1       
    end

  end

  def self.tournament_winner(tournament)
    if !(tournament[0].is_a?(Array))
      return tournament
    else
      return self.winner(self.tournament_winner(tournament[0]), self.tournament_winner(tournament[1]))
    end
  end

end
