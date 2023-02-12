class CreateStudents < ActiveRecord::Migration[6.0]
  def change
    create_table :students do |t|
      t.string :name
      t.string :id_card_number
      t.integer :age
      t.string :sex

      t.timestamps
    end
  end
end
