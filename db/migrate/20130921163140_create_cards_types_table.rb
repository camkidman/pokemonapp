class CreateCardsTypesTable < ActiveRecord::Migration
  def up
  	create_table :cards_types, :id => false do |t|
  		t.references :card
  		t.references :type
  	end
  	add_index :cards_types, [:card_id, :type_id]
  end

  def down
  	drop_table :cards_types
  end
end
