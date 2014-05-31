class CreateCompanies < ActiveRecord::Migration
  def change
    create_table :companies do |t|
      t.string :name
      t.string :status
      t.integer :owner_id
      t.integer :contact_id
      t.text :conversation_history

      t.timestamps

    end
  end
end
