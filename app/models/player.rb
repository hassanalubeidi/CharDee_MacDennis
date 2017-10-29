class Player < ApplicationRecord
	def pickup_card
		team = Team.find(self.team_id)
		possible_cards = Card.where(level: team.level)
		random_no = Random.rand(possible_cards.count - 1)
		return possible_cards[random_no]
	end
end
