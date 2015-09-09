class CreatePublicPrograms < ActiveRecord::Migration
  def change
    create_table :public_programs do |t|
      t.string :name
      t.text :description
      t.decimal :valueSpending
      t.date :dataSpending
      t.references :public_agency, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
