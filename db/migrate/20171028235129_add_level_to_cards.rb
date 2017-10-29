class AddLevelToCards < ActiveRecord::Migration[5.1]
  def change
    add_column :cards, :level, :string
  end
end
