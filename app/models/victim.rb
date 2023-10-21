class Victim < ApplicationRecord
    validates :name, presence: true
    has_many :attack, dependent: :destroy
    has_many :monster, :through => :attack,dependent: :destroy    
end
