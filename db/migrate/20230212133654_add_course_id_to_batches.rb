class AddCourseIdToBatches < ActiveRecord::Migration[6.0]
  def change
    add_reference :batches, :course, null: false, foreign_key: true
  end
end
