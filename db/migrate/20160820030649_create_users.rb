class CreateUsers < ActiveRecord::Migration[5.0]
  def change
    create_table :users do |t|
      t.string :first_name
      t.string :last_name
      t.text :summary
      t.string :status
      t.string :public_url
      t.string :professional_role
      t.string :email_address
      t.json :positions
      t.timestamps
    end
  end
end
