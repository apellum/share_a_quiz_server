class CreateUsers < ActiveRecord::Migration[6.1]
  def change
    create_table :users do |t|
      t.string :email
      t.string :name
      t.string :username
      t.string :password_digest
      t.date :date_of_birth

      t.timestamps
    end
  end
end
