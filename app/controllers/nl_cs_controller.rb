class NlCsController < ApplicationController
  before_action :set_nlc, only: [:show, :edit, :update, :destroy]

  # GET /nlcs
  # GET /nlcs.json
  def index
    @nlcs = Nlc.all
  end

  # GET /nlcs/1
  # GET /nlcs/1.json
  def show
  end

  # GET /nlcs/new
  def new
    @nlc = Nlc.new
  end

  # GET /nlcs/1/edit
  def edit
  end

  # POST /nlcs
  # POST /nlcs.json
  def create
    @nlc = Nlc.new(nlc_params)

    respond_to do |format|
      if @nlc.save
        format.html { redirect_to @nlc, notice: 'Nlc was successfully created.' }
        format.json { render :show, status: :created, location: @nlc }
      else
        format.html { render :new }
        format.json { render json: @nlc.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /nlcs/1
  # PATCH/PUT /nlcs/1.json
  def update
    respond_to do |format|
      if @nlc.update(nlc_params)
        format.html { redirect_to @nlc, notice: 'Nlc was successfully updated.' }
        format.json { render :show, status: :ok, location: @nlc }
      else
        format.html { render :edit }
        format.json { render json: @nlc.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /nlcs/1
  # DELETE /nlcs/1.json
  def destroy
    @nlc.destroy
    respond_to do |format|
      format.html { redirect_to nlcs_url, notice: 'Nlc was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_nlc
      @nlc = Nlc.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def nlc_params
      params.require(:nlc).permit(:id, :nlc_no)
    end
end
