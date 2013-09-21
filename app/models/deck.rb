class Deck < ActiveRecord::Base
  attr_accessible :name
  has_and_belongs_to_many :cards
  belongs_to :user
end
