class CreateDelayedInstallments < ActiveRecord::Migration[5.1]
  def change
    create_table :delayed_installments do |t|
      t.references :contract, null: false, foreign_key: true
      t.string :contract_eid, null: true
      t.string :installment_index, null: true
      t.datetime :due_date, null: true
      t.float :value, null: true
      t.timestamps
    end
  end
end
