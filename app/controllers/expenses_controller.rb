class ExpensesController < ApplicationController
  def index
    @expenses = Expense.all
    @expenses = @expenses.concept(params[:concept]) if  params[:concept].present?
    @expenses = @expenses.category(params[:category_id]) if  params[:category_id].present?
    @expenses = @expenses.order("date DESC")
  end
end
