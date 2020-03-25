class CpdsController < ApplicationController
  before_action :set_cpd, only: [:show, :edit, :update, :destroy]

  # GET /cpds
  # GET /cpds.json
  def index
    @cpds = Cpd.all
  end

  # GET /cpds/1
  # GET /cpds/1.json
  def show
    redirect_to cpds_url
  end

  # GET /cpds/new
  def new
    @cpd = Cpd.new
  end

  # GET /cpds/1/edit
  def edit
  end

  # POST /cpds
  # POST /cpds.json
  def create
    @cpd = Cpd.new(cpd_params)

    respond_to do |format|
      if @cpd.save
        format.html { redirect_to @cpd, notice: 'Cpd was successfully created.' }
        format.json { render :show, status: :created, location: @cpd }
      else
        format.html { render :new }
        format.json { render json: @cpd.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /cpds/1
  # PATCH/PUT /cpds/1.json
  def update
    respond_to do |format|
      if @cpd.update(cpd_params)
        format.html { redirect_to @cpd, notice: 'Cpd was successfully updated.' }
        format.json { render :show, status: :ok, location: @cpd }
      else
        format.html { render :edit }
        format.json { render json: @cpd.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /cpds/1
  # DELETE /cpds/1.json
  def destroy
    @cpd.destroy
    respond_to do |format|
      format.html { redirect_to cpds_url, notice: 'Cpd was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_cpd
      @cpd = Cpd.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def cpd_params
      params.require(:cpd).permit(:date, :title, :body, :image)
    end
end
