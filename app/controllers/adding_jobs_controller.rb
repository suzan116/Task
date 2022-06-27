class AddingJobsController < ApplicationController
  before_action :set_adding_job, only: %i[ show edit update destroy ]

  # GET /adding_jobs or /adding_jobs.json
  def index
    @adding_jobs = AddingJob.all
  end

  # GET /adding_jobs/1 or /adding_jobs/1.json
  def show
  end

  # GET /adding_jobs/new
  def new
    @adding_job = AddingJob.new
  end

  # GET /adding_jobs/1/edit
  def edit
  end

  # POST /adding_jobs or /adding_jobs.json
  def create
    @adding_job = AddingJob.new(adding_job_params)

    respond_to do |format|
      if @adding_job.save
        format.html { redirect_to adding_job_url(@adding_job), notice: "Adding job was successfully created." }
        format.json { render :show, status: :created, location: @adding_job }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @adding_job.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /adding_jobs/1 or /adding_jobs/1.json
  def update
    respond_to do |format|
      if @adding_job.update(adding_job_params)
        format.html { redirect_to adding_job_url(@adding_job), notice: "Adding job was successfully updated." }
        format.json { render :show, status: :ok, location: @adding_job }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @adding_job.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /adding_jobs/1 or /adding_jobs/1.json
  def destroy
    @adding_job.destroy

    respond_to do |format|
      format.html { redirect_to adding_jobs_url, notice: "Adding job was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_adding_job
      @adding_job = AddingJob.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def adding_job_params
      params.require(:adding_job).permit(:title, :description)
    end
end
