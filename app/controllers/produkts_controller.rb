class ProduktsController < ApplicationController
  def new
  	    @produkt = Produkt.new
  end

  def show
  	    @produkt = Produkt.all
  end


   def create
     @produkt = Produkt.create :nazwa => params[:produkt][:nazwa]
    if @produkt.save
      flash[:success] = "Dodano nowy produkt!"
    else
    	render 'new'
    end
end  

  private

    def produkt_params
      params.require(:produkt).permit(:nazwa)
    end
end
