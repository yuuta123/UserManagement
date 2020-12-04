class CreateUsers < ActiveRecord::Migration[6.0]
  def change
    create_table :users do |t|
      t.string :name
      t.integer :company_id
      t.integer :pay_company_id
      t.date :start_date
      t.date :end_date

      t.timestamps
    end
  end
end
