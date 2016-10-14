class PictureEntriesController < ApplicationController
  before_action :set_picture_entry, only: [:show, :edit, :update, :destroy]

  # GET /picture_entries
  # GET /picture_entries.json
  def index
    @picture_entries = PictureEntry.all
  end

  # GET /picture_entries/1
  # GET /picture_entries/1.json
  def show
  end

  # GET /picture_entries/new
  def new
    @picture_entry = PictureEntry.new
  end

  # GET /picture_entries/1/edit
  def edit
  end

  # POST /picture_entries
  # POST /picture_entries.json
  def create
    @picture_entry = PictureEntry.new(picture_entry_params)

    respond_to do |format|
      if @picture_entry.save
        format.html { redirect_to @picture_entry, notice: 'Picture entry was successfully created.' }
        format.json { render :show, status: :created, location: @picture_entry }
      else
        format.html { render :new }
        format.json { render json: @picture_entry.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /picture_entries/1
  # PATCH/PUT /picture_entries/1.json
  def update
    respond_to do |format|
      if @picture_entry.update(picture_entry_params)
        format.html { redirect_to @picture_entry, notice: 'Picture entry was successfully updated.' }
        format.json { render :show, status: :ok, location: @picture_entry }
      else
        format.html { render :edit }
        format.json { render json: @picture_entry.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /picture_entries/1
  # DELETE /picture_entries/1.json
  def destroy
    @picture_entry.destroy
    respond_to do |format|
      format.html { redirect_to picture_entries_url, notice: 'Picture entry was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_picture_entry
      @picture_entry = PictureEntry.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def picture_entry_params
      params.require(:picture_entry).permit(:title, :description, :location, :picture)
    end
end
