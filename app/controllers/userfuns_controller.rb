class UserfunsController < ApplicationController
  def index
  end

  def new
  	@userfun = Userfun.new
  end

  def create
  	@userfun = Userfun.create :nazwa => params[:userfun][:nazwa], :user_id => params[:userfun][:user_id], :function_id => params[:userfun][:function_id]
    if @userfun.save
      flash[:success] = "Dodano nowego posta"
      redirect_to @userfun
      
    else
      
    end
  end

  def show
    @userfun = Userfun.all
  end


    def userfun_params
      params.require(:userfun).permit(:nazwa)
    end
end
