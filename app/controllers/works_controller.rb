class WorksController < ProtectedController
  before_action :set_work, only: [:show, :update, :destroy]

  # GET /works
  def index
    @works = current_user.works

    render json: @works
  end

  # GET /works/1
  def show
    render json: @work
  end

  # POST /works
  def create
    @work = current_user.works.build(work_params)

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
      # thanks to the magic of the users have many works :through vehicles,
        # this is possible
      @work = current_user.works.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def work_params
      params.require(:work).permit(:name, :mileage, :date, :vehicle_id)
    end
end
