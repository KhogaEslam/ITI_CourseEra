class CreateLectures < ActiveRecord::Migration
  def change
    create_table :lectures do |t|
      t.text :description
      t.string :video
      t.references :course, index: true

      t.timestamps
    end
  end
end
