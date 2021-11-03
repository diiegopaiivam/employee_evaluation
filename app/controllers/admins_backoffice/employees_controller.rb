class AdminsBackoffice::EmployeesController < AdminsBackofficeController
    def index
    end

    def new
        @employee = Employee.new
    end 
end
