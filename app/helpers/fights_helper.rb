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
  
  # def create_all_rounds(fight, fighters)
#     fight = Fight.find(fight.id)
#     fighters = fight.fighters
#     numrounds = fight.numrounds
#     
#     fighters.uniq.each do |fighter|
#       i = 1
#       while i < numrounds+1 do
#         Round.create(fight_id: fight.id, fighter_id: fighter.id, roundname: i)
#         i +=1
#       end
#     end
#     redirect_to @fight
#   end
end
