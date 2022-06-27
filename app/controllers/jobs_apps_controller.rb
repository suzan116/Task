class JobsAppsController < ApplicationController
  
  before_action :set_jobs_app, only: %i[ show edit update destroy ]

  # GET /jobs_apps or /jobs_apps.json
  def index
    @jobs_apps = JobsApp.all
  end

  # GET /jobs_apps/1 or /jobs_apps/1.json
  def show
  end

  # GET /jobs_apps/new
  def new
    @jobs_app = JobsApp.new
  end

  # GET /jobs_apps/1/edit
  def edit
  end

  # POST /jobs_apps or /jobs_apps.json
  def create
    @jobs_app = JobsApp.new(jobs_app_params)
    @post.user_id=current_user.id
    respond_to do |format|
      if @jobs_app.save
        format.html { redirect_to jobs_app_url(@jobs_app), notice: "Jobs app was successfully created." }
        format.json { render :show, status: :created, location: @jobs_app }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @jobs_app.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /jobs_apps/1 or /jobs_apps/1.json
  def update
    respond_to do |format|
      if @jobs_app.update(jobs_app_params)
        format.html { redirect_to jobs_app_url(@jobs_app), notice: "Jobs app was successfully updated." }
        format.json { render :show, status: :ok, location: @jobs_app }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @jobs_app.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /jobs_apps/1 or /jobs_apps/1.json
  def destroy
    @jobs_app.destroy

    respond_to do |format|
      format.html { redirect_to jobs_apps_url, notice: "Jobs app was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_jobs_app
      @jobs_app = JobsApp.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def jobs_app_params
      params.require(:jobs_app).permit(:title, :description, :status)
    end
end
