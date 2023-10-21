class Monster < ApplicationRecord
    validates :name, presence: true, uniqueness: true 
    has_many :tweet, dependent: :destroy
    has_many :attack, dependent: :destroy
    has_many :victim, :through => :attack, dependent: :destroy   
end
