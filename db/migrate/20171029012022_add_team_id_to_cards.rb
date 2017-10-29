class AddTeamIdToCards < ActiveRecord::Migration[5.1]
  def change
    add_column :cards, :team_id, :integer
  end
end
