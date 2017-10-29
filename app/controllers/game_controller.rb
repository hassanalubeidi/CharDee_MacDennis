class GameController < ApplicationController
  def index
  	@games = Game.all
  	@no_games = Game.all.count == 0
  end

  def new
  	@game = Game.new
  end

  def create
  	Game.create(game_params)
  	redirect_to game_path(Game.last)
  end

  def show
  	@game = Game.find(params[:id])
  	@game.calculate_game_state
  end

  def select_teams
  	@game = Game.find(params[:game_id])
  end

  def create_team
  	@game = Game.find(params[:game_id])
  	if @game.teams.count < 2 then #validation
  		@team = Team.find(params[:team_id]).dup
  		@team.save
  		@game.teams << @team
  		redirect_to add_players_path(team_id: @team.id)
  	end
  end

  def add_players
  	@team = Team.find(params[:team_id])
  end

  def create_player
  	@team = Team.find(params[:team_id])
  	if @team.players.count < 5 then #validation
  		@player = Player.find(params[:player_id]).dup
  		@player.save
  		@team.players << @player
  		redirect_to add_players_path(team_id: @team.id)
  	end
  end

  def collect_card
  	card = Card.find(params[:card]).dup
  	card.save
  	cur_player = Player.find(params[:current_player])
  	Team.find(cur_player.team_id).cards << card
  	game = Game.find(Team.find(cur_player.team_id).game_id)
  	game.update_current_player
  	redirect_to game_path(game)
  end

  def end_turn
  	Game.find(params[:game]).update_current_player
  	redirect_to game_path(params[:game])
  end

  def game_params
    params.require(:game).permit(:name, :status)
  end

  def team_params
  	params.require(:team).permit(:name)
  end
end