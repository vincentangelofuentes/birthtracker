class BirthtrackersController < ApplicationController
  before_action :set_birthtracker, only: %i[ show edit update destroy ]

  # GET /birthtrackers or /birthtrackers.json
  def index
    @birthtrackers = Birthtracker.all
  end

  # GET /birthtrackers/1 or /birthtrackers/1.json
  def show
  end

  # GET /birthtrackers/new
  def new
    @birthtracker = Birthtracker.new
  end

  # GET /birthtrackers/1/edit
  def edit
  end

  # POST /birthtrackers or /birthtrackers.json
  def create
    @birthtracker = Birthtracker.new(birthtracker_params)

    respond_to do |format|
      if @birthtracker.save
        format.html { redirect_to @birthtracker, notice: "Birthtracker was successfully created." }
        format.json { render :show, status: :created, location: @birthtracker }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @birthtracker.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /birthtrackers/1 or /birthtrackers/1.json
  def update
    respond_to do |format|
      if @birthtracker.update(birthtracker_params)
        format.html { redirect_to @birthtracker, notice: "Birthtracker was successfully updated." }
        format.json { render :show, status: :ok, location: @birthtracker }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @birthtracker.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /birthtrackers/1 or /birthtrackers/1.json
  def destroy
    @birthtracker.destroy
    respond_to do |format|
      format.html { redirect_to birthtrackers_url, notice: "Birthtracker was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  def index
    @birthtrackers = Birthtracker.all
    @thisWeek = Date.today +7
    @date = Date.today
    @year = Date.today.strftime("%Y")
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_birthtracker
      @birthtracker = Birthtracker.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def birthtracker_params
      params.require(:birthtracker).permit(:first_name, :last_name, :email, :birthdate, :gift_received)
    end



end
