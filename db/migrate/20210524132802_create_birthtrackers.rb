class CreateBirthtrackers < ActiveRecord::Migration[6.1]
  def change
    create_table :birthtrackers do |t|
      t.string :first_name
      t.string :last_name
      t.string :email
      t.date   :birthdate
      t.string :status
      t.date   :gift_received
     
      t.timestamps
    end
  end
end
