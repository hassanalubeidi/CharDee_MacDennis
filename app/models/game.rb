class Game < ApplicationRecord
	has_many :teams

	def calculate_game_state
		self.teams.each do |team|
			if team.cards.where(level: "three").count >= 2 then
				team.update_attributes(level: "win")
				self.update_attributes(status: "#{team.name} won")
			elsif team.cards.where(level: "two").count >= 2 then
				team.update_attributes(level: "three")
			elsif team.cards.where(level: "one").count >= 3 then
				team.update_attributes(level: "two")
			end
		end
	end

	def current_player
		if self.current_player_id == nil then

			self.update_attributes({current_player_id:self.teams.map {|x| x.players}.flatten.first.id})
		end
		Player.find(self.current_player_id)
	end

	def current_team
		Team.find(current_player.team_id)
	end

	
	def update_current_player
		all_players = all_player_ids
		current_index = current_player_index
		before_self = all_players[0..(current_index)]
		after_self = all_players[(current_index+1)..-1]
		circular_array = [current_player.id, *after_self, *before_self]
		self.update_attributes({current_player_id: circular_array[1]})
		return Player.find(self.current_player_id)
	end

	private
	def current_player_index
		self.teams.map {|x| x.players.map {|y| y.name} }.flatten.find_index Player.find(self.current_player_id).name
	end
	def all_player_ids
		self.teams.map {|x| x.players.map {|y| y.id} }.flatten
	end
end
