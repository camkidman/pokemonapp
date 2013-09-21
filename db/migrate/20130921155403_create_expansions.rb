class CreateExpansions < ActiveRecord::Migration
  def change
    create_table :expansions do |t|
      t.string :name
      t.string :icon_url
      t.string :release_date

      t.timestamps
    end
  end
end
