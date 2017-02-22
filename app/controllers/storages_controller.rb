class StoragesController < ApplicationController
  # Association
  # Call
  before_action :set_storage, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!, except: [:show, :index]

  # GET /storages
  # GET /storages.json
  def index
    @storages = Storage.all
    @storages = @storages.where(term: params[:term]) if params[:term]
    @storages = @storages.where(city: params[:city]) if params[:city]


      # marker.infowindow render_to_string(partial: "/flats/map_box", locals: { flat: flat })

  end

  # GET /storages/1
  # GET /storages/1.json
  def show
    @booking = Booking.new
     @storages = Storage.where.not(latitude: nil, longitude: nil)

    @hash = Gmaps4rails.build_markers(@storage) do |storage, marker|
      marker.lat storage.latitude
      marker.lng storage.longitude
    end
  end

  # GET /storages/new
  def new
    @storage = Storage.new

  end

  # GET /storages/1/edit
  def edit
  end

  # POST /storages
  # POST /storages.json
  def create
    @storage = Storage.new(storage_params)
    @storage.user = current_user
    if @storage.save
      redirect_to @storage, notice: 'Storage was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /storages/1
  # PATCH/PUT /storages/1.json
  def update
    respond_to do |format|
      if @storage.update(storage_params)
        format.html { redirect_to @storage, notice: 'Storage was successfully updated.' }
        format.json { render :show, status: :ok, location: @storage }
      else
        format.html { render :edit }
        format.json { render json: @storage.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /storages/1
  # DELETE /storages/1.json
  def destroy
    @storage.destroy
    respond_to do |format|
      format.html { redirect_to storages_url, notice: 'Storage was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_storage
      @storage = Storage.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def storage_params
      params.require(:storage).permit(:title, :size, :description, :photo, :term, :price, :city)
    end
  end
