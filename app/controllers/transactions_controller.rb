class TransactionsController < ApplicationController
  def new
    @transaction = Transaction.new
  end

  def create

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
