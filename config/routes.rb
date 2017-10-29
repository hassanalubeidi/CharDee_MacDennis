Rails.application.routes.draw do
	get '/games/add_players', to: 'game#add_players', as: 'add_players'
	post '/games/collect_card', to: 'game#collect_card', as: 'collect_card'
	post '/games/end_turn', to: 'game#end_turn', as: 'end_turn'
    resources :game, path: 'games' do
	  	post '/create_team', to: 'game#create_team', as: 'create_team'
	  	post '/create_player', to: 'game#create_player', as: 'create_player'
	end
  root 'title#index'

  get 'game/new'

  get 'level/show'

  get 'level/next'

  get 'characters/index'

  get 'characters/select'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
