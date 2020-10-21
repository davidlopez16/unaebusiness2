class PerfilempresasController < ApplicationController
  before_action :set_perfilempresa, only: [:show, :edit, :update, :destroy]
  before_action :set_empresa
  # GET /perfilempresas.json
  def index
    @perfilempresas = Perfilempresa.all
  end

  # GET /perfilempresas/1
  # GET /perfilempresas/1.json
  def show
  end

  # GET /perfilempresas/new
  def new
    @perfilempresa = Perfilempresa.new
  end

  # GET /perfilempresas/1/edit
  def edit
  end

  # POST /perfilempresas
  # POST /perfilempresas.json
  def create
    @perfilempresa = current_user.perfilempresas.new(perfilempresa_params)
    @perfilempresa.empresa = @empresa
    respond_to do |format|
      if @perfilempresa.save
        format.html { redirect_to @perfilempresa.empresa, notice: 'Perfilempresa was successfully created.' }
        format.json { render :show, status: :created, location: @perfilempresa }
      else
        format.html { render :new }
        format.json { render json: @perfilempresa.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /perfilempresas/1
  # PATCH/PUT /perfilempresas/1.json
  def update
    respond_to do |format|
      if @perfilempresa.update(perfilempresa_params)
        format.html { redirect_to @perfilempresa.empresa, notice: 'Perfilempresa was successfully updated.' }
        format.json { render :show, status: :ok, location: @perfilempresa }
      else
        format.html { render :edit }
        format.json { render json: @perfilempresa.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /perfilempresas/1
  # DELETE /perfilempresas/1.json
  def destroy
    @perfilempresa.destroy
    respond_to do |format|
      format.html { redirect_to @empresa, notice: 'Perfilempresa was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    def set_empresa
      @empresa = Empresa.find(params[:empresa_id])
      
    end
    # Use callbacks to share common setup or constraints between actions.
    def set_perfilempresa
      @perfilempresa = Perfilempresa.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def perfilempresa_params
      params.fetch(:perfilempresa, {})
    end
end
