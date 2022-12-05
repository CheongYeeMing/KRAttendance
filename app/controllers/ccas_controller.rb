class CcasController < ApplicationController
  before_action :set_cca, only: %i[ show edit update destroy ]

  @@browsingCca

  # GET /ccas or /ccas.json
  def index
    @ccas = Cca.all
  end

  # GET /ccas/1 or /ccas/1.json
  def show
    @cca_members = @cca.members
    @events = Event.where(cca_id: params[:id])
    @attendances = Attendance.all
  end

  # GET /ccas/new
  def new
    @cca = Cca.new
    @users = User.all
  end

  # GET /ccas/1/edit
  def edit
    @users = User.all
  end

  # POST /ccas or /ccas.json
  def create
    @cca = Cca.new(cca_params.except(:leaders_ids))
    if params[:cca][:leaders_ids].present?
      @cca.leaders = User.none
      params[:cca][:leaders_ids].select{ |id| id != ""}.each do |id|
        @cca.leaders << User.find(id)
      end
    end

    respond_to do |format|
      if @cca.save
        format.html { redirect_to cca_url(@cca), notice: "Cca was successfully created." }
        format.json { render :show, status: :created, location: @cca }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @cca.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /ccas/1 or /ccas/1.json
  def update
    respond_to do |format|
      if @cca.update(cca_params.except(:leaders_ids))
        if params[:cca][:leaders_ids].present?
          @cca.leaders = User.none
          params[:cca][:leaders_ids].select{ |id| id != ""}.each do |id|
            @cca.leaders << User.find(id)
          end
        end
        if params[:cca][:members_ids].present?
          @cca.members = User.none
          params[:cca][:members_ids].select{ |id| id != ""}.each do |id|
            @cca.members << User.find(id)
          end
        end
        format.html { redirect_to cca_url(@cca), notice: "Cca was successfully updated." }
        format.json { render :show, status: :ok, location: @cca }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @cca.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /ccas/1 or /ccas/1.json
  def destroy
    @cca.destroy

    respond_to do |format|
      format.html { redirect_to ccas_url, notice: "Cca was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  def self.setBrowsingCca(cca)
    @@browsingCca = cca
  end

  def self.getBrowsingCca
    @@browsingCca
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_cca
      @cca = Cca.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def cca_params
      params.require(:cca).permit(:name, :description, leaders_ids: [], avatars: [])
    end
end
