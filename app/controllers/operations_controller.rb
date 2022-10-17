class OperationsController < ApplicationController

  def index
    @operations = Operation.all
  end

  def new
    @operation = Operation.new 
  end

  def create
    @operation = Operation.new(operation_params)
    @operation.save
    redirect_to operations_path
    flash[:alert] = "Opération enregistrée avec succès !"
  end

  private

  def operation_params
    params.require(:operation).permit(:title, :targets, :description, :votes, :total_amount, :start_date, :end_date, :state)
  end

end
