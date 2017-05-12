class CreateLikes < ActiveRecord::Migration
  def change
    create_table :likes do |t|
      t.references :lecture, index: true
      t.references :user, index: true

      t.timestamps
    end
  end
end
