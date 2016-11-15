class ToestsController < ApplicationController
  before_action :set_toest, only: [:show, :edit, :update, :destroy]

  # GET /toests
  # GET /toests.json
  def index
    @toests = Toest.all
    @toest = Toest.new
  end

  # GET /toests/1
  # GET /toests/1.json
  def show
  end

  # GET /toests/new
  def new
    @toest = Toest.new
  end

  # GET /toests/1/edit
  def edit
  end

  # POST /toests
  # POST /toests.json
  def create
    @toest = Toest.new(toest_params)

    respond_to do |format|
      if @toest.save
        format.html { redirect_to @toest, notice: 'Toest was successfully created.' }
        format.js   {}
        format.json { render :show, status: :created, location: @toest }
      else
        format.html { render :new }
        format.json { render json: @toest.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /toests/1
  # PATCH/PUT /toests/1.json
  def update
    respond_to do |format|
      if @toest.update(toest_params)
        format.html { redirect_to @toest, notice: 'Toest was successfully updated.' }
        format.json { render :show, status: :ok, location: @toest }
      else
        format.html { render :edit }
        format.json { render json: @toest.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /toests/1
  # DELETE /toests/1.json
  def destroy
    @toest.destroy
    respond_to do |format|
      format.html { redirect_to toests_url, notice: 'Toest was eaten.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_toest
      @toest = Toest.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def toest_params
      params.require(:toest).permit(:name, :crunchiness, :sweet, :price)
    end
end
