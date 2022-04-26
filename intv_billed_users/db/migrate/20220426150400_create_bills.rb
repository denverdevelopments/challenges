class CreateBills < ActiveRecord::Migration[5.2]
  def change
    create_table :bills do |t|
      t.references :biller, foreign_key: true
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
