class CreateContacts < ActiveRecord::Migration
  def change
    create_table :contacts do |t|
      t.integer :company_id
      t.boolean :hr
      t.boolean :kelloggalum
      t.string :name

      t.timestamps

    end
  end
end
