class PlayersController < ApplicationController
    before_action :find_player, only: [:show, :edit, :update]
    before_action :find_teams, only: [:new, :edit]
    def index
        @players = Player.all
    end

    def show
    end

    def new
        @player = Player.new
    end

    def create
        @player = Player.create(player_params)
        redirect_to player_path(@player)
    end
    
    def edit
    end

    def update
        @player.update(player_params)
        redirect_to player_path(@player)
    end

    def destroy
        Player.destroy(params[:id])
        redirect_to players_path
    end

    private

    def find_teams
        @teams = BasketballTeam.all
    end

    def find_player
        @player = Player.find(params[:id])
    end

    def player_params
        params.require(:player).permit(:name, :number, :basketball_team_id)
    end

end
