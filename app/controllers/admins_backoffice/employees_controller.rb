class AdminsBackoffice::EmployeesController < AdminsBackofficeController
    before_action :set_employee, only: [:show, :edit, :update, :destroy]

    def index
        @employees = Employee.all
    end

    def new
        @employee = Employee.new
    end 

    def show
    end

    def edit
    end

    def update
        if @employee.update(employee_params)
          redirect_to admins_backoffice_employees_path, notice: "Colaborador atualizado com sucesso"
        else 
          render :edit
        end
    end

    def create
        @employee = Employee.new(employee_params)
        if @employee.save
          redirect_to admins_backoffice_employees_path, notice: "Colaborador Salvo com sucesso!"
        else 
          render :new
        end
    end 

    def destroy
        if @employee.destroy
          redirect_to admins_backoffice_employees_path, notice: "Colaborador excluído com sucesso"
        else 
          render :index 
        end
    end



    private 

        def set_employee
            @employee = Employee.find(params[:id])
        end 

        def employee_params
            params.require(:employee).permit(:name, :office)
        end 
end
