class CreateImports < ActiveRecord::Migration[5.1]
  def change
    create_table :imports do |t|
      t.string :filename, null: true
      t.integer :rows, null: true
      t.timestamps
    end
  end
end
