class ProcessosController < ApplicationController
  before_action :set_processo, only: %i[show edit update]

  def index
    @processos = Processo.all
  end

  def show
  end

  def new
    @processo = Processo.new
  end

  def create
    @processo = Processo.new(processo_params)
    if @processo.save
      # redirect_to processos_path
      redirect_to processo_path(@processo), notice: 'O processo foi criado.'
    else
      render :new
    end
  end

  def edit
  end

  def update
    @processo.update(processo_params)
    redirect_to processo_path(@processo), notice: 'O processo foi atualizado.'
  end

  private

  def set_processo
    @processo = Processo.find(params[:id])
  end

  def processo_params
    params.require(:processo).permit(:sei, :objeto, :demandante, :tipo_contratacao, :fase, :data_inicio)
  end
end
