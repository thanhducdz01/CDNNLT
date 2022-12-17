class QlTvsController < ApplicationController
  before_action :set_ql_tv, only: %i[ show edit update destroy ]

  # GET /ql_tvs or /ql_tvs.json
  def index
    @ql_tvs = QlTv.all
  end

  # GET /ql_tvs/1 or /ql_tvs/1.json
  def show
  end

  # GET /ql_tvs/new
  def new
    @ql_tv = QlTv.new
  end

  # GET /ql_tvs/1/edit
  def edit
  end

  # POST /ql_tvs or /ql_tvs.json
  def create
    @ql_tv = QlTv.new(ql_tv_params)

    respond_to do |format|
      if @ql_tv.save
        flash.now[:notice] = "We have exactly"
        format.html { redirect_to ql_tv_url(@ql_tv), notice: "Tạo mới cây thành công." }
        format.json { render :show, status: :created, location: @ql_tv }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @ql_tv.errors, status: :unprocessable_entity }
      end 
    end
  end

  # PATCH/PUT /ql_tvs/1 or /ql_tvs/1.json
  def update
    respond_to do |format|
      if @ql_tv.update(ql_tv_params)
        format.html { redirect_to ql_tv_url(@ql_tv), notice: "Cập nhật cây thành công." }
        format.json { render :show, status: :ok, location: @ql_tv }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @ql_tv.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /ql_tvs/1 or /ql_tvs/1.json
  def destroy
    @ql_tv.destroy

    respond_to do |format|
      format.html { redirect_to ql_tvs_url, notice: "Xóa Cây thành công." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_ql_tv
      @ql_tv = QlTv.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def ql_tv_params
      params.require(:ql_tv).permit(:sv_id, :sv_name, :sv_class, :sv_addr, :sv_dob,:sv_duoctinh,:sv_note,:sv_place)
    end
end
