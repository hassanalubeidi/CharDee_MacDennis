class CreatePlayers < ActiveRecord::Migration[5.1]
  def change
    create_table :players do |t|
      t.string :name
      t.text :image_url
      t.string :team_name

      t.timestamps
    end
  end
end
