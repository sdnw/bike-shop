class Admin::BikesController < ApplicationController
  before_action :set_admin_bike, only: %i[ show edit update destroy ]

  # GET /admin/bikes or /admin/bikes.json
  def index
    @admin_bikes = Admin::Bike.all
  end

  # GET /admin/bikes/1 or /admin/bikes/1.json
  def show
  end

  # GET /admin/bikes/new
  def new
    @admin_bike = Admin::Bike.new
  end

  # GET /admin/bikes/1/edit
  def edit
  end

  # POST /admin/bikes or /admin/bikes.json
  def create
    @admin_bike = Admin::Bike.new(admin_bike_params)

    respond_to do |format|
      if @admin_bike.save
        format.html { redirect_to @admin_bike, notice: "Bike was successfully created." }
        format.json { render :show, status: :created, location: @admin_bike }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @admin_bike.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /admin/bikes/1 or /admin/bikes/1.json
  def update
    respond_to do |format|
      if @admin_bike.update(admin_bike_params)
        format.html { redirect_to @admin_bike, notice: "Bike was successfully updated." }
        format.json { render :show, status: :ok, location: @admin_bike }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @admin_bike.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /admin/bikes/1 or /admin/bikes/1.json
  def destroy
    @admin_bike.destroy!

    respond_to do |format|
      format.html { redirect_to admin_bikes_path, status: :see_other, notice: "Bike was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_admin_bike
      @admin_bike = Admin::Bike.find(params.expect(:id))
    end

    # Only allow a list of trusted parameters through.
    def admin_bike_params
      params.expect(admin_bike: [ :name, :category, :stock, :price ])
    end
end
