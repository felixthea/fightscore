module FightersHelper
  def find_fights_fighters(fight_id)
    fight = Fight.find(fight_id)
    fighters = fight.fighters
    return fighters
  end
end
