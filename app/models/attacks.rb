class Attacks < ApplicationRecord    
    validate :age_of_victims
    #belongs_to :monsters
    #belongs_to :victims
    def age_of_victims
        m=Monsters.find(monster_id)
        v=Victims.find(victim_id)
        age=Time.now.utc.to_date.year - (v.birthdate.year) - 
            ((Time.now.utc.to_date.month > v.birthdate.month && Time.now.utc.to_date.day > v.birthdate.day) ? 0 : 1)
            
        if (m.scare_level > 5 && age < 18)
            errors.add(:underage, "Underage people can't be attacked by monsters with scare level over of 5")
        end    
    end
end
