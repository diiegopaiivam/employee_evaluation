class EvaluationEmployeeController < ApplicationController  
  before_action :set_employee, only: [:show_modal]
  skip_before_action :verify_authenticity_token

  def index
    @employees = Employee.all
  end

  def create
    @evaluationEmployee = EvaluationEmployee.new(set_params)
    if @evaluationEmployee.save
      redirect_to root_path, notice: "Colaborador Salvo com sucesso!"
    else 
      flash[:error] = "falha ao salvar a avaliação"
      redirect_to root_path
    end
  end

  def show_modal
    @evaluationEmployee = EvaluationEmployee.new
    respond_to do |format|
      format.html {render :partial => "show_modal"}
      format.js
    end 
  end 

  private 
      def set_employee
        @employee = Employee.find(params[:id])
      end 

      def set_params
        params.require(:evaluation_employee).permit(:grades, :comments, :employee_id)
      end 
end
