class ChangeCol < ActiveRecord::Migration[5.2]
  def change
    change_column :transactions, :currency, :string
  end
end
