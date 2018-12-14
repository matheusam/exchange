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
      flash[:alert] = 'Você deve informar todos os dados da transação'
      render :new
    end
  end

  def show
    @transaction = Transaction.find(params[:id])
  end

  def edit

  end

  def update
  end

  def destroy
  end
end
