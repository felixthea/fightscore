module FightsHelper
  def find_rounds_for_fights_fighter(fight_id, fighter_id)
    rounds = Round.find_all_by_fight_id_and_fighter_id(fight_id, fighter_id)
    return rounds
  end
  
  def find_users_score_for_round(round_id, user_id)
    score = Score.find_by_round_id_and_user_id(round_id, user_id)
    return score
  end
  
  def find_fights_fighters(fight_id)
    fight = Fight.find(fight_id)
    fighters = fight.fighters
    return fighters
  end
  
  def find_all_fighters
    fighters = Fighter.all
    return fighters
  end
  
  def find_all_rounds_for_fight(fight_id)
    rounds = Round.find_all_by_fight_id(fight_id)
    return rounds
  end
  
  def calculate_total_score(fight_id, fighter_id, user_id)
    @fight = Fight.find(fight_id)
    @rounds = Round.find_all_by_fight_id_and_fighter_id(@fight.id, fighter_id)
    fighter_score = 0
    
    @rounds.each do |round|
      fighter_score = fighter_score + Score.find_by_round_id_and_user_id(round.id, user_id).score
    end
    
    fighter_score
  end
  
  def find_all_users_scores_for_round(round_id)
    scores = Score.find_all_by_round_id(round_id)
    return scores
  end
  
  # def avg_score(scores)
#     avg_score = (score / scores.count)
#     return avg_score
#   end
  
  # def calculate_all_users_score(fight_id, fighter_id)
#     @fight = Fight.find(fight_id)
#     @rounds = Round.find_all_by_fight_id_and_fighter_id(@fight.id, fighter_id)
    
end
