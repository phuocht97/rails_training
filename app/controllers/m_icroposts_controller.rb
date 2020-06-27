class MIcropostsController < ApplicationController
  before_action :set_m_icropost, only: [:show, :edit, :update, :destroy]

  # GET /m_icroposts
  # GET /m_icroposts.json
  def index
    @m_icroposts = MIcropost.all
  end

  # GET /m_icroposts/1
  # GET /m_icroposts/1.json
  def show
  end

  # GET /m_icroposts/new
  def new
    @m_icropost = MIcropost.new
  end

  # GET /m_icroposts/1/edit
  def edit
  end

  # POST /m_icroposts
  # POST /m_icroposts.json
  def create
    @m_icropost = MIcropost.new(m_icropost_params)

    respond_to do |format|
      if @m_icropost.save
        format.html { redirect_to @m_icropost, notice: 'M icropost was successfully created.' }
        format.json { render :show, status: :created, location: @m_icropost }
      else
        format.html { render :new }
        format.json { render json: @m_icropost.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /m_icroposts/1
  # PATCH/PUT /m_icroposts/1.json
  def update
    respond_to do |format|
      if @m_icropost.update(m_icropost_params)
        format.html { redirect_to @m_icropost, notice: 'M icropost was successfully updated.' }
        format.json { render :show, status: :ok, location: @m_icropost }
      else
        format.html { render :edit }
        format.json { render json: @m_icropost.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /m_icroposts/1
  # DELETE /m_icroposts/1.json
  def destroy
    @m_icropost.destroy
    respond_to do |format|
      format.html { redirect_to m_icroposts_url, notice: 'M icropost was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_m_icropost
      @m_icropost = MIcropost.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def m_icropost_params
      params.require(:m_icropost).permit(:content, :user_id)
    end
end
