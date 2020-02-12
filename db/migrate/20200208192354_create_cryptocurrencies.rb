class CreateCryptocurrencies < ActiveRecord::Migration[5.0]
  def change
    create_table :cryptocurrencies do |t|
      t.string :bitcoin

      t.timestamps
    end
  end
end
