class ItemsController < ApplicationController

 def index
     @items = Item.all
 end
    
 def show
     @item = Item.find(params[:id])
 end
  def new
      @item = Item.new
  end
    
    def edit
        @item = Item.find(params[:id])
    end
    
    def update
         @item = Item.find(params[:id])
         @item.name = params[:item][:name]

         if @item.save
           flash[:notice] = "Item was saved."
           redirect_to @item
         else
           flash.now[:alert] = "There was an error saving the post. Please try again."
           render :edit
         end
   end
    
   def create

     @item = Item.new
     @item.name = params[:item][:name]

     if @item.save
       flash[:notice] = "Item was saved."
       redirect_to @item
     else
       flash.now[:alert] = "There was an error saving the item. Please try again."
       render :index
     end
   end
    

end
