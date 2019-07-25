class PurchasesController < ApplicationController
    def new
        @purchase = Purchase.new
        @brews = Brew.all
    end

    def create
        @brews = Brew.all
        @purchase = Purchase.new(purchase_params)
        byebug
        if @purchase.save
            redirect_to purchase_path(@purchase)
        else 
            render :new
        end
    end

    def show
        @purchase = Purchase.find(params[:id])
    end

    def index
        @purchases = Purchase.all
    end

    private

    def purchase_params
        params.require(:purchase).permit(:customer_name, :price, :brew_id, :size, :creamer_strength, :special_instructions)
    end
end
