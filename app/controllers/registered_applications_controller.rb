class RegisteredApplicationsController < ApplicationController
  def index
  	@apps = current_user.registered_applications
  end

  def show
  	@app = RegisteredApplication.find(params[:id])
  end

  def new
  	@app = RegisteredApplication.new
  end

  def create
  	@app = current_user.registered_applications.build(params.require(:registered_application).permit(:name, :url))
  	@app.user = current_user

  	if @app.save
  		flash[:notice] = "Application was registered!"
  		redirect_to [@app]
  	else
  		flash.now[:alert] = "There was an error saving the application. Please try again."
  		render :new
  	end
  end

  def destroy
  	 @app = RegisteredApplication.find(params[:id])
    #authorize @wiki

    if @app.destroy
      flash[:notice] = "\"#{@app.name}\" was deleted successfully."
      redirect_to registered_applications_path
    else
      flash.now[:alert] = "There was an error deleting your application. Try again."
      render :show
    end
  end
end
