class FakturasController < ApplicationController
  def index
  end

  def new
  	@faktura = Faktura.new
  end

  def show
  	@faktura = Faktura.all
  end

  def create
  	  	  @faktura = Faktura.create :cena => params[:faktura][:cena], :firma_id => params[:faktura][:firma_id]
    if @faktura.save
      flash[:success] = "Dodano nowego posta"
      redirect_to @faktura
      
    else
      
    end
  end
end
