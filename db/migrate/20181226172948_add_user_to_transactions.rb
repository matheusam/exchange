class AddUserToTransactions < ActiveRecord::Migration[5.2]
  def change
    add_column :transactions, :user, :string
  end
end
