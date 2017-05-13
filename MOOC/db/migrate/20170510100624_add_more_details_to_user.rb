class AddMoreDetailsToUser < ActiveRecord::Migration
  def change
    add_column :users, :date_of_birth, :date
    add_column :users, :gender, :string, default => 'other'
  end
end
