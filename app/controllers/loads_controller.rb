class LoadsController < ApplicationController
  before_action :set_load, only: [:show, :edit, :update, :destroy]

  # GET /loads
  # GET /loads.json
  def index
    @loads = Load.all
    # @inv = Stripe::Invoice.retrieve(Load.find(9).invoice_id)
  end

  # GET /loads/1
  # GET /loads/1.json
  def show
  end

  # GET /loads/new
  def new
    @load = Load.new
  end

  # GET /loads/1/edit
  def edit
  end

  def test
    @load = Load.find(request.env['HTTP_REFERER'].split('/')[-1])
    @customer = @load.user
    Stripe::InvoiceItem.create({
      customer: @customer.stripe_id,
      amount: (@load.weight * 100),
      currency: 'usd',
      description: 'laundly fee'
    })

    invoice = Stripe::Invoice.create({
      customer: @customer.stripe_id,
      auto_advance: true
    })

    @load.amount_due = invoice.amount_due / 100
    @load.invoice_id = invoice.id
    @load.save
    redirect_to loads_path
  end

  # POST /loads
  # POST /loads.json
  def create
    @load = Load.new(load_params)
    @load.user_id = current_user.id
    @customer = Stripe::Customer.create({email: current_user.email})
    current_user.stripe_id = @customer.id

    respond_to do |format|
      if (@load.save && current_user.save)
        format.html { redirect_to @load, notice: 'Load was successfully created.' }
        format.json { render :show, status: :created, location: @load }
      else
        format.html { render :new }
        format.json { render json: @load.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /loads/1
  # PATCH/PUT /loads/1.json
  def update
    respond_to do |format|
      if @load.update(load_params)
        format.html { redirect_to @load, notice: 'Load was successfully updated.' }
        format.json { render :show, status: :ok, location: @load }
      else
        format.html { render :edit }
        format.json { render json: @load.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /loads/1
  # DELETE /loads/1.json
  def destroy
    @load.destroy
    respond_to do |format|
      format.html { redirect_to loads_url, notice: 'Load was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_load
      @load = Load.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def load_params
      params.require(:load).permit(:pickup, :weight, :paid, :status, :store_id, :user_phone, :user_id)
    end
end
