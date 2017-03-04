class FunctionsController < ApplicationController
  def new
  	    @function = Function.new
  end

  def show
  	    @function = Function.all
  end


   def create
     @function = Function.create :nazwa => params[:function][:nazwa]
    if @function.save
    	render 'new'
    else
    	render 'new'
    end
end  


def edit
 
end



  private

    def function_params
      params.require(:function).permit(:nazwa)
    end
end
