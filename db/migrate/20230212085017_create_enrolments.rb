class CreateEnrolments < ActiveRecord::Migration[6.0]
  def change
    create_table :enrolments do |t|
      t.string :number
      t.datetime :date
      t.references :student, null: false, foreign_key: true
      t.references :course, null: false, foreign_key: true

      t.timestamps
    end
  end
end
