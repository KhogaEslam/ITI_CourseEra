class CreateApplicationRoles < ActiveRecord::Migration
  def up
    ['admin', 'instructor', 'regular'].each do |role_name|
      Role.create! name: role_name
    end
  end
  def down
    Role.where(name: ['admin', 'instructor', 'regular']).destroy_all
  end
end
