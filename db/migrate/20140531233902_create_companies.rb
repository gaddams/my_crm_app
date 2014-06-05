class CreateCompanies < ActiveRecord::Migration
  def change
    create_table :companies do |t|
      t.string :name
      t.string :status
      t.integer :user_id
      t.integer :contact_id


      t.timestamps

    end
  end
end
