class FirmasController < ApplicationController
  def new
  	    @firma = Firma.new
  end

  def show
  	    @firma = Firma.all
  end


   def create
     @firma = Firma.create :nazwa => params[:firma][:nazwa],:adres => params[:firma][:adres]
    if @firma.save
      flash[:success] = "Dodano nową firme!"
    else
    	render 'new'
    end
end  

  private

    def function_params
      params.require(:firma).permit(:nazwa, :adres)
    end
end
