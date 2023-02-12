class AddBatchReferencesToEnrolments < ActiveRecord::Migration[6.0]
  def change
    add_reference :enrolments, :batch, null: false, foreign_key: true
  end
end
