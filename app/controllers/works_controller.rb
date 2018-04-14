class WorksController < ProtectedController
  before_action :set_work, only: [:show, :update, :destroy]

  # GET /works
  def index
    @works = Work.all

    render json: @works
  end

  # GET /works/1
  def show
    render json: @work
  end

  # POST /works
  def create
    @work = Work.create(work_params)

    if @work.save
      render json: @work, status: :created, location: @work
    else
      render json: @work.errors, status: :unprocessable_entity
    end
  end


  # PATCH/PUT /works/1
  def update
    if @work.update(work_params)
      render json: @work
    else
      render json: @work.errors, status: :unprocessable_entity
    end
  end

  # DELETE /works/1
  def destroy
    @work.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_work
      @work = current_user.vehicles.find(params[:vehicle_id]).works
                          .find(params[:work_id])
    end

    # Only allow a trusted parameter "white list" through.
    def work_params
      params.require(:work).permit(:name, :mileage, :date)
    end
end
