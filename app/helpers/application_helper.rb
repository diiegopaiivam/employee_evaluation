module ApplicationHelper
    def evaluation_positive
        @positive_evaluations = EvaluationEmployee.where("grades > 6")
        return @positive_evaluations.size
    end 

    def evaluation_negative
        @negative_evaluations = EvaluationEmployee.where("grades < 6")
        return @negative_evaluations.size
    end 
end
