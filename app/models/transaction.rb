class Transaction < ApplicationRecord
  validates :amount, :currency, :quotation, :transaction_type, presence: true
  def str_converter(input)
    case input
      when 'dollar'
        return 'Dólar'
      when 'real'
        return 'Real'
      when 'buy'
        return 'Compra'
      when 'sell'
        return 'Venda'
      end
    end

  def total(transaction)
    case transaction.currency
    when 'dollar'
      if transaction.transaction_type == 'sell'
        t = "$ #{ format("%.2f", -transaction.amount)}"
      else
        t = "$ #{ format("%.2f", transaction.amount)}"
      end
    when 'real'
      dollares = transaction.amount / transaction.quotation
      if transaction.transaction_type == 'buy'
        t = "$ #{ format("%.2f", dollares)}"
      else
        t = "$ #{ format("%.2f", -dollares)}"
      end
    end
    return t
  end

end
