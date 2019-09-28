class CreateBankSlips < ActiveRecord::Migration[5.1]
  def change
    create_table :bank_slips do |t|
      t.references :delayed_installment, null: false, foreign_key: true
      t.datetime :due_date, null: true
      t.float :value, null: true
      t.float :fee, null: true
      t.float :interest, null: true
      t.timestamps
    end
  end
end
