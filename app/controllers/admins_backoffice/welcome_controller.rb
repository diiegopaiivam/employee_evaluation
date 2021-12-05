class AdminsBackoffice::WelcomeController < AdminsBackofficeController
    def index
        @employee = Employee.all
        @evaluation = EvaluationEmployee.all
    end
end