class TransactionsController < ApplicationController

  def new
    @transaction = Transaction.new
    @user = User.all
  end

  def created_at(transaction)
      @transaction.date.strftime('%d/%m/%Y')
  end

  def create
    @transaction = Transaction.create(transaction_params)
    if @transaction.amount != nil || @transaction.quotation != nil
      @transaction.save
      redirect_to @transaction
    else
      flash[:notice] = 'Você deve informar todos os dados da transação'
      render :new
    end
  end

  def show
    @user = User.find(params[:id])
    @transaction = Transaction.find(params[:id])
  end

  def edit
    @transaction = Transaction.find(params[:id])
  end

  def update
    @transaction = Transaction.find(params[:id])
    if @transaction.valid?
      @transaction.update(transaction_params)
      redirect_to transaction_path(@transaction)
    else
      flash[:warning] = 'Você deve informar todos os dados da transação'
    end
  end

  def destroy
    @transaction = Transaction.find(params[:id])
    @transaction.destroy
    redirect_to root_path
    flash[:notice] = 'Transação apagada com sucesso!'
  end

  def transaction_params
    params.require(:transaction).permit(:amount, :currency, :quotation, :transaction_type, :user)
  end
end
