class BasketballTeamsController < ApplicationController
    before_action :find_team, only: [:show, :edit, :update, :destroy]
    def index
        @teams = BasketballTeam.all 
    end

    def show  
    end

    def new
        @team = BasketballTeam.new
    end 

    def create
        @team = BasketballTeam.create(team_params)
        redirect_to basketball_team_path(@team)
    end

    def edit
    end

    def update
        @team.update(team_params)
        redirect_to basketball_team_path(@team)
    end 

    def destroy
        @team.destroy
        redirect_to basketball_teams_path
    end

    private #make sure private is downcased

    def find_team
        @team = BasketballTeam.find(params[:id])
    end

    def team_params
        params.require(:basketball_team).permit(:city_name, :team_name, :team_colors, :no_of_championships)
    end
end
