class BrewsController < ApplicationController
    
    def index
        @brews = Brew.all

    end

    def new
        @brew = Brew.new
    end

    def create
        @brew = Brew.create(brews_params)
        redirect_to @brew
    end

    def edit
        @brew = Brew.find(params[:id])
    end

    def update
        @brew = Brew.find(params[:id])
        @brew.update(brews_params)
        redirect_to @brew
    end

    def show
        @brew = Brew.find(params[:id])
    end 

    def destroy
        @brew = Brew.find(params[:id])
        @brew.delete
        redirect_to brews_path
    end

    def strongest
       @strongest_blends = Brew.strongest
    end

    private

    def brews_params
        params.require(:brew).permit(:blend_name, :origin, :notes, :strength)
    end
end
