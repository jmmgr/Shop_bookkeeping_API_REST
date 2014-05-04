class NameExpensesController < ApplicationController
  before_action :set_name_expense, only: [:show, :edit, :update, :destroy]

  # GET /name_expenses
  # GET /name_expenses.json
  def index
    @name_expenses = NameExpense.all.order(:name)
  end

  # GET /name_expenses/1
  # GET /name_expenses/1.json
  def show
  end

  # GET /name_expenses/new
  def new
    @name_expense = NameExpense.new
  end

  # GET /name_expenses/1/edit
  def edit
  end

  # POST /name_expenses
  # POST /name_expenses.json
  def create
    @name_expense = NameExpense.new(name_expense_params)

    respond_to do |format|
      if @name_expense.save
        format.html { redirect_to @name_expense, notice: 'Name expense was successfully created.' }
        format.json { render :show, status: :created, location: @name_expense }
      else
        format.html { render :new }
        format.json { render json: @name_expense.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /name_expenses/1
  # PATCH/PUT /name_expenses/1.json
  def update
    respond_to do |format|
      if @name_expense.update(name_expense_params)
        format.html { redirect_to @name_expense, notice: 'Name expense was successfully updated.' }
        format.json { render :show, status: :ok, location: @name_expense }
      else
        format.html { render :edit }
        format.json { render json: @name_expense.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /name_expenses/1
  # DELETE /name_expenses/1.json
  def destroy
    @name_expense.destroy
    respond_to do |format|
      format.html { redirect_to name_expenses_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_name_expense
      @name_expense = NameExpense.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def name_expense_params
      params.require(:name_expense).permit(:name)
    end
end
