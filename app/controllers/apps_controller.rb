class AppsController < ApplicationController
   load_and_authorize_resource
  before_action :set_app, only: [:show, :edit, :update, :destroy]
    before_action :authenticate_user!, except: [:index, :show]

  # GET /apps
  # GET /apps.json
  def index
    @apps = App.all
  end

  # GET /apps/1
  # GET /apps/1.json
  def show
  end

  # GET /apps/new
  def new
    @app = App.new
  end

  # GET /apps/1/edit
  def edit
  end

  # POST /apps
  # POST /apps.json
  def create
    @app = App.new(app_params)
    @app.user = current_user
   

      if @app.save
       redirect_to @app, notice: 'App was successfully created.' 
   
      else
        render :new 

      end
    
  end

  # PATCH/PUT /apps/1
  # PATCH/PUT /apps/1.json
  def update
 
      if @app.update(app_params)
         redirect_to @app, notice: 'App was successfully updated.' 
    
      else
         render :edit 
        
      end
    
  end

  # DELETE /apps/1
  # DELETE /apps/1.json
  def destroy
    @app.destroy
      redirect_to apps_url, notice: 'App was successfully destroyed.' 
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_app
      @app = App.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def app_params
      params.require(:app).permit(:startdate, :enddate, :location, :status, :user_id, :document_id)
    end
end
