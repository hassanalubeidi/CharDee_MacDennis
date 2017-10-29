class AddDefaultValuesToLevels < ActiveRecord::Migration[5.1]
  def change
  	change_column_default(:teams, :level, "one")
  end
end
