class TransactionsController < ApplicationController
  def new
    @transaction = Transaction.new
  end

  def created_at(transaction)
      @transaction.date.strftime('%d/%m/%Y')
  end

  def create
    @transaction = Transaction.new(params.require(:transaction).permit(:amount, :currency, :quotation, :transaction_type))
    if @transaction.save
        redirect_to @transaction
    else
      flash[:notice] = 'Você deve informar todos os dados da transação'
      render :new
    end
  end

  def show
    @transaction = Transaction.find(params[:id])
  end

  def edit
    @transaction = Transaction.find(params[:id])
  end

  def update
    @transaction = Transaction.find(params[:id])
    if @transaction.update(params.require(:transaction).permit(:amount, :currency, :quotation, :transaction_type))
        redirect_to transaction_path(@transaction)
    else
      flash[:notice] = 'Você deve informar todos os dados da transação'
    end
  end

  def destroy
    @transaction = Transaction.find(params[:id])
    @transaction.destroy
    redirect_to root_path
    flash[:notice] = 'Transação apagada com sucesso!'
  end
end
