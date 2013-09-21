class CreateCards < ActiveRecord::Migration
  def change
    create_table :cards do |t|
      t.integer :hp
      t.string :name
      t.string :weakness
      t.string :ability
      t.string :flavor_text
      t.string :resistance
      t.string :retreat
      t.integer :stage
      t.string :evolved_from
      t.integer :set_no
      t.integer :height
      t.integer :weight
      t.string :miniflavor

      t.timestamps
    end
  end
end
