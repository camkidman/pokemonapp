class Card < ActiveRecord::Base
  attr_accessible :ability, :evolved_from, :flavor_text, :height, :hp, :miniflavor, :name, :resistance, :retreat, :set_no, :stage, :weakness, :weight
end
