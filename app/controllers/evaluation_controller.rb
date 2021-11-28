class EvaluationController < ApplicationController

  def index
    @employees = Employee.all
  end

  def new
  end

  def create
  end
end
