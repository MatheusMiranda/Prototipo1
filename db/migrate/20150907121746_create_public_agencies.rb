class CreatePublicAgencies < ActiveRecord::Migration
  def change
    create_table :public_agencies do |t|
      t.string :name
      t.text :description
      t.decimal :value

      t.timestamps null: false
    end
  end
end
