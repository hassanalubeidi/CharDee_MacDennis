class AddLevelToTeams < ActiveRecord::Migration[5.1]
  def change
    add_column :teams, :level, :string
  end
end
