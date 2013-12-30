class SalePaymentsController < ApplicationController
  before_action :set_sale_payment, only: [:show, :edit, :update, :destroy]

  # GET /sale_payments
  # GET /sale_payments.json
  def index
    @sale_payments = SalePayment.all
  end

  # GET /sale_payments/1
  # GET /sale_payments/1.json
  def show
  end

  # GET /sale_payments/new
  def new
    @sale_payment = SalePayment.new
  end

  # GET /sale_payments/1/edit
  def edit
  end

  # POST /sale_payments
  # POST /sale_payments.json
  def create
    @sale_payment = SalePayment.new(sale_payment_params)

    respond_to do |format|
      if @sale_payment.save
        format.html { redirect_to @sale_payment, notice: 'Sale payment was successfully created.' }
        format.json { render action: 'show', status: :created, location: @sale_payment }
      else
        format.html { render action: 'new' }
        format.json { render json: @sale_payment.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /sale_payments/1
  # PATCH/PUT /sale_payments/1.json
  def update
    respond_to do |format|
      if @sale_payment.update(sale_payment_params)
        format.html { redirect_to @sale_payment, notice: 'Sale payment was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @sale_payment.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /sale_payments/1
  # DELETE /sale_payments/1.json
  def destroy
    @sale_payment.destroy
    respond_to do |format|
      format.html { redirect_to sale_payments_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_sale_payment
      @sale_payment = SalePayment.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def sale_payment_params
      params.require(:sale_payment).permit(:sale_id, :payment_type, :payment_amount)
    end
end
