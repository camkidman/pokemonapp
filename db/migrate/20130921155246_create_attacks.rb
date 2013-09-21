class CreateAttacks < ActiveRecord::Migration
  def change
    create_table :attacks do |t|
      t.string :name
      t.string :cost
      t.string :text
      t.integer :dmg

      t.timestamps
    end
  end
end
