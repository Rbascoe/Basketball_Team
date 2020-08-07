class PlayersController < ApplicationController
    
    def index
        @players = Player.all
    end

    def show
        @player = Player.find(params[:id])
    end

    def new
        @player = Player.new
        @teams = BasketballTeam.all
    end

    def create
        @player = Player.create(player_params)
        redirect_to player_path(@player)
    end
    
    def edit
        @player = Player.find(params[:id])
        @teams = BasketballTeam.all
    end

    def update
        @player = Player.find(params[:id])
        @player.update(player_params)
        redirect_to player_path(@player)
    end

    def destroy
        Player.destroy(params[:id])
        redirect_to players_path
    end

    private

    def player_params
        params.require(:player).permit(:name, :number, :basketball_team_id)
    end

end
