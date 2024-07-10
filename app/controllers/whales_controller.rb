class WhalesController < ApplicationController
  before_action :set_whale, only: %i[ show edit update destroy ]

  # GET /whales or /whales.json
  def index
    @whales = Whale.all
  end

  # GET /whales/1 or /whales/1.json
  def show
  end

  # GET /whales/new
  def new
    @whale = Whale.new
  end

  # GET /whales/1/edit
  def edit
  end

  # POST /whales or /whales.json
  def create
    @whale = Whale.new(whale_params)

    respond_to do |format|
      if @whale.save
        format.html { redirect_to whale_url(@whale), notice: "Whale was successfully created." }
        format.json { render :show, status: :created, location: @whale }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @whale.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /whales/1 or /whales/1.json
  def update
    respond_to do |format|
      if @whale.update(whale_params)
        format.html { redirect_to whale_url(@whale), notice: "Whale was successfully updated." }
        format.json { render :show, status: :ok, location: @whale }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @whale.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /whales/1 or /whales/1.json
  def destroy
    @whale.destroy

    respond_to do |format|
      format.html { redirect_to whales_url, notice: "Whale was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_whale
      @whale = Whale.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def whale_params
      params.require(:whale).permit(:name, :facts)
    end
end
