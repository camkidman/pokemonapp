class CreateCardsDecksTable < ActiveRecord::Migration
  def up
  	create_table :cards_decks, :id => false do |t|
  		t.references :card
  		t.references :deck
  	end
  	add_index :cards_decks, [:card_id, :deck_id]
  end

  def down
  	drop_table :cards_decks
  end
end
