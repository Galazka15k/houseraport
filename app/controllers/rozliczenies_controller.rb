class RozliczeniesController < ApplicationController
  def index
  end

  def new
  	@rozliczenie = Rozliczenie.new
  end

  def show
  	@rozliczenie = Rozliczenie.all
  end

  def create

  	   @rozliczenie = Rozliczenie.create :obrot => params[:rozliczenie][:obrot],
  	 :karta => params[:rozliczenie][:karta], :kasa_fiskalna => params[:rozliczenie][:kasa_fiskalna],
  	 :w_sushimaster => params[:rozliczenie][:w_sushimaster],
  	 :w_ciepla => params[:rozliczenie][:w_ciepla],
  	 :w_dostawca => params[:rozliczenie][:w_dostawca],
  	 :w_kelnterka => params[:rozliczenie][:w_kelnterka],
     :i_sushimaster => params[:rozliczenie][:i_sushimaster],
     :i_ciepla => params[:rozliczenie][:i_ciepla],
     :i_dostawca => params[:rozliczenie][:i_dostawca],
     :i_kelnterka => params[:rozliczenie][:i_kelnterka]
    if @rozliczenie.save
      flash[:success] = "Dodano nowe rozliczenie"
      redirect_to @rozliczenie
      
    else

     render "new"
  
    end
  end


      private

    def rozliczenie_params
      params.require(:rozliczenie).permit(:obrot, :karta, :kasa_fiskalna, :w_sushimaster,
      	:w_ciepla, :w_dostawca, :w_keltnerka, :i_kelnterka, :i_sushimaster, :i_dostawca, :i_ciepla)
    end
end
