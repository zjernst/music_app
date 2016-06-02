class CreateTracks < ActiveRecord::Migration
  def change
    create_table :tracks do |t|
      t.string :title, null: false
      t.integer :album_id, null: false
      t.boolean :bonus, default: false, null: false
      t.text :lyrics

      t.timestamps null: false
    end
  end
end
