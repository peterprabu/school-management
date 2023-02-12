class CreateSchools < ActiveRecord::Migration[6.0]
  def change
    create_table :schools do |t|
      t.string :name
      t.text :address
      t.string :city
      t.string :country
      t.string :contact

      t.timestamps
    end
  end
end
