class DinosController < ApplicationController
    def index
        @dinos = Dino.all 
        render json: @dinos
    end

end
