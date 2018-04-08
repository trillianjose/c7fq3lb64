class ExpensesController < ApplicationController
  before_action :authenticate_user!
  skip_before_action :verify_authenticity_token, only: :destroy

  def index
    @expenses = current_user.expenses
    @expenses = @expenses.concept(params[:concept]) if  params[:concept].present?
    @expenses = @expenses.category(params[:category_id]) if  params[:category_id].present?
    @expenses = @expenses.order("date DESC")
  end
end
