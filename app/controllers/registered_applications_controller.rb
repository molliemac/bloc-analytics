class RegisteredApplicationsController < ApplicationController
   def index
   	@apps = RegisteredApplication.all
   end
 
   def show
   	@app = RegisteredApplication.find(params[:id])
   	@events = @app.events.group_by(&:name)
   end
 
   def new
  	@app = RegisteredApplication.new
   end
 
   def create
   	@app = RegisteredApplication.new(app_params)
   	@app.user = current_user
 
   	if @app.save
   		flash[:notice] = "Application was registered!"
   		redirect_to registered_applications_path
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

  private

  def app_params
    params.require(:registered_application).permit(:name, :url)
  end
end