class PaymentsController < ApplicationController
  before_action :set_payment, only: [:show, :edit, :update, :destroy]
  before_action :authenticate
  # GET /last_paymentsjson
  def last_payments
    @last_payments = Payment.last(params[:limit]) 
  end
  
  def by_provider
    provider_spaces =params[:provider]
    provider_spaces=provider_spaces.tr("_", " ")
   # provider_spaces=provider_spaces.tr("%C3%B1", "ñ")
#    @payments_provider =  Payment.where("provider = ?",provider_spaces).order(day_date: :desc)
    @payments_provider =  Payment.where(:provider => provider_spaces).order(day_date: :desc)

  end
  def by_day
    @payments_by_day =  Payment.where(:day_date => params[:day]).order(:provider)
  end  
  # GET active_payments'
  def active_payments
    @active_payments =  Payment.where("state is true")
  end 
  
  # GET /payments
  # GET /payments.json
  def index
    @payments = Payment.all
  end

  # GET /payments/1
  # GET /payments/1.json
  def show
  end

  # GET /payments/new
  def new
    @payment = Payment.new
  end

  # GET /payments/1/edit
  def edit
  end

  # POST /payments
  # POST /payments.json
  def create
    @payment = Payment.new(payment_params)

    respond_to do |format|
      if @payment.save
        format.html { redirect_to @payment, notice: 'Payment was successfully created.' }
        format.json { render :show, status: :created, location: @payment }
      else
        format.html { render :new }
        format.json { render json: @payment.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /payments/1
  # PATCH/PUT /payments/1.json
  def update
    respond_to do |format|
      if @payment.update(payment_params)
        format.html { redirect_to @payment, notice: 'Payment was successfully updated.' }
        format.json { render :show, status: :ok, location: @payment }
      else
        format.html { render :edit }
        format.json { render json: @payment.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /payments/1
  # DELETE /payments/1.json
  def destroy
    @payment.destroy
    respond_to do |format|
      format.html { redirect_to payments_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_payment
      @payment = Payment.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def payment_params
      params.require(:payment).permit(:amount, :provider, :state, :day_date)
    end
    
    def authenticate
      authenticate_or_request_with_http_basic do |name, password|
       name=="prueba"&& password=="prueba"
     end
      
    end  
 
end
