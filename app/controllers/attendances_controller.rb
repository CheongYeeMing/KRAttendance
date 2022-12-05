class AttendancesController < ApplicationController
  before_action :set_attendance, only: %i[ show edit update destroy ]
  before_action :set_event_cca, only: %i[ new edit ]

  # GET /attendances or /attendances.json
  def index
    @attendances = Attendance.all
  end

  # GET /attendances/1 or /attendances/1.json
  def show
  end

  # GET /attendances/new
  def new
    @attendance = Attendance.new
  end

  # GET /attendances/1/edit
  def edit
  end

  # POST /attendances or /attendances.json
  def create
    @attendance = Attendance.new(attendance_params.except(:CCA, :event, :cca_id))

    respond_to do |format|
      if @attendance.save
        format.html { redirect_to cca_url(CcasController.getBrowsingCca), notice: "Attendance was successfully created." }
        format.json { render :show, status: :created, location: @attendance }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @attendance.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /attendances/1 or /attendances/1.json
  def update
    respond_to do |format|
      if @attendance.update(attendance_params.except(:CCA, :event, :cca_id))
        format.html { redirect_to cca_url(CcasController.getBrowsingCca), notice: "Attendance was successfully updated." }
        format.json { render :show, status: :ok, location: @attendance }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @attendance.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /attendances/1 or /attendances/1.json
  def destroy
    @attendance.destroy

    respond_to do |format|
      format.html { redirect_to cca_url(attendance_params[:cca_id]), notice: "Attendance was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_attendance
      @attendance = Attendance.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def attendance_params
      params.require(:attendance).permit(:user_id, :event_id, :cca_id, :CCA, :event, :attending)
    end

    def set_event_cca
      @event = Event.find_by_id((params[:attendance_param])["event_id"])
      puts (params[:attendance_param])["cca_id"]
      @cca = Cca.find_by_id((params[:attendance_param])["cca_id"])
      puts "got cca or not"
      puts @cca.name
      CcasController.setBrowsingCca(@cca)
    end
end
