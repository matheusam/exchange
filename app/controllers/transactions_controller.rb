class TransactionsController < ApplicationController
  def new
    @transaction = Transaction.new
  end

  def created_at(transaction)
      transaction.date.strftime('%d/%m/%Y')
  end

  def create
    @transaction = Transaction.new(amount, currency, quotation, transaction_type)
    if @transaction.save
        redirect_to @transaction
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
