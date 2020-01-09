class UserCardsController < ApplicationController
      def index
        @usercards = UserCard.all
        @colors = Color.all
        @dinos = Dino.all
        @users = User.all

        @dinocards = []

        @usercards.map do |card|
          dinocard = {}
          dinocard[:id] = card.id
          colorObj = @colors.find {|color| color.id == card.color_id}
          dinocard[:color] = colorObj.color
          dinoObj = @dinos.find {|dino| dino.id ==  card.dino_id}
          dinocard[:img] = dinoObj.img
          userObj = @users.find {|user| user.id == card.user_id}
          dinocard[:name]= userObj.name
          @dinocards<<dinocard
        end
        render json: @dinocards
      end
      
      def show
        @usercard = UserCard.find(params:[:id])
        render json: @usercard
      end
    
      def create
        @usercard = UserCard.create(user_card_params)
        render json: @usercard
      end
    
      def update
        @usercard = UserCard.find(params[:id])
        @usercard.update(user_card_params)
        render json: @usercard
      end
    
      def destroy
        @usercard = UserCard.find(params[:id])
        @usercard.destroy
      end

    private
    def user_card_params
    params.permit(:dino_id,:color_id,:user_id,:id)
    end
end

