class CreateLectures < ActiveRecord::Migration
  def change
    create_table :lectures do |t|
      t.string :description
      t.string :video
      t.references :course, index: true

      t.timestamps
    end
  end
end
