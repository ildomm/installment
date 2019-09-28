class CreateContracts < ActiveRecord::Migration[5.1]
  def change
    create_table :contracts do |t|
      t.string :external_id, null: true
      t.string :customer_name, null: true
      t.string :customer_email, null: true
      t.string :customer_cpf, null: true
      t.float :loan_value, null: true
      t.integer :payment_term, null: true
      t.string :realty_address, null: true
      t.timestamps
    end
  end
end
