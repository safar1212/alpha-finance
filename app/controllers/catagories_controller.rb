class CatagoriesController < ApplicationController

    def index
        @catagories =Catagory.where(user_id: current_user.id).order(created_at: :desc)
    end

    def new
        @catagory = Catagory.new
    end

    def create
        @catagory = Catagory.new(catagory_params)
        @catagory.user_id = current_user.id
    
        respond_to do |format|
          format.html do
            if @catagory.save
              flash[:success] = 'Catagory successfully created'
              redirect_to catagories_path
            else
              flash[:error] = 'Unable to create Catagory'
              render new
            end
          end
        end
      end

    private

  def catagory_params
    params.require(:catagory).permit(:icon, :name)
  end

end

  

