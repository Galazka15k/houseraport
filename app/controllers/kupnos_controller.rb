class KupnosController < ApplicationController
  def index
  end

  def new
  	 @kupno = Kupno.new
  end

  def create
  	  @kupno = Kupno.create :nazwa => params[:kupno][:nazwa], :firma_id => params[:kupno][:firma_id], :produkt_id => params[:kupno][:produkt_id]
    if @kupno.save
      flash[:success] = "Dodano nowego posta"
      redirect_to @kupno
      
    else
      
    end
  end

  def show
    @kupno = Kupno.all
    
  end


    private

    def kupno_params
      params.require(:kupno).permit(:nazwa)
    end
end
