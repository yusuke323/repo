class KadaisController < ApplicationController
  before_action :set_kadai, only: [:show, :edit, :update, :destroy]

  # GET /kadais
  def index
    @kadais = Kadai.all
  end

  # GET /kadais/1
  def show
  end

  # GET /kadais/new
  def new
    @kadai = Kadai.new
  end

  # GET /kadais/1/edit
  def edit
  end

  # POST /kadais
  def create
    if @kadai = Kadai.create(kadai_params)
        redirect_to @kadai, notice: 'タスクを作成しました'
       else
        render :new
    end
  end

  # PATCH/PUT /kadais/1
  def update
      if @kadai.update(kadai_params)
        redirect_to @kadai, notice: 'タスクを更新しました'
      else
        render :edit
      end
  end

  # DELETE /kadais/1
  def destroy
    @kadai.destroy
      redirect_to kadais_url, notice: 'タスクを削除しました'
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_kadai
      @kadai = Kadai.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def kadai_params
      params.require(:kadai).permit(:title, :body)
    end
