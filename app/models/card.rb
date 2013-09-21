class Card < ActiveRecord::Base
  attr_accessible :ability, :evolved_from, :flavor_text, :height, :hp, :miniflavor, :name, :resistance, :retreat, :set_no, :stage, :weakness, :weight
  has_and_belongs_to_many :types
  has_and_belongs_to_many :decks
  has_and_belongs_to_many :attacks
  has_one :expansion
end
