class CreateCards < ActiveRecord::Migration[5.1]
  def change
    create_table :cards do |t|
      t.text :front
      t.text :back
      t.string :card_type
      t.string :color
      t.boolean :wildcard

      t.timestamps
    end
  end
end
