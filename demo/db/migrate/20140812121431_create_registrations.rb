class CreateRegistrations < ActiveRecord::Migration
  def change
    create_table :registrations do |t|
      t.string :name
      t.string :email
      t.string :encrypted_password

      t.timestamps
    end
  end
end
