class ItemsController < ApplicationController

    def index
       @catagory = Catagory.find(params['catagory_id'])
       @items = Item.where(user_id: current_user.id, catagory_id: params['catagory_id']).order(created_at: :desc)
       @total_price = 0
       @items.each do |item|
        @total_price += item.amount.to_i
       end
    end

    def create
        @item = Item.new(item_params)
        @item.user_id = current_user.id
        @item.catagory_id = params['catagory_id']
    
        respond_to do |format|
          format.html do
            if @item.save
              flash[:success] = 'Item added successfully'
              redirect_to catagory_items_path
            else
              flash[:error] = 'Unable to add Item'
              render new
            end
          end
        end
    end

    def new
        @item = Item.new
    end

    private

    def item_params
        params.require(:item).permit(:name, :amount)
      end
end
