class BasketballTeamsController < ApplicationController

    def index
        @teams = BasketballTeam.all 
    end

    def show
        @team = BasketballTeam.find(params[:id])   
    end

    def new
        @team = BasketballTeam.new
    end 

    def create
        @team = BasketballTeam.create(team_params)
        redirect_to basketball_team_path(@team)
    end

    def edit
        @team = BasketballTeam.find(params[:id])
    end

    def update
        @team = BasketballTeam.find(params[:id])
        @team.update(team_params)
        redirect_to basketball_team_path(@team)
    end 

    def destroy
        @team = BasketballTeam.find(params[:id])
        @team.destroy
        redirect_to basketball_teams_path
    end

    private #make sure private is downcased

    def team_params
        params.require(:basketball_team).permit(:city_name, :team_name, :team_colors, :no_of_championships)
    end
end
