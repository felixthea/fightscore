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
end
