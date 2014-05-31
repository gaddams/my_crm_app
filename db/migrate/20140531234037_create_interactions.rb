class CreateInteractions < ActiveRecord::Migration
  def change
    create_table :interactions do |t|
      t.integer :user_id
      t.string :contact_id
      t.date :date
      t.text :message
      t.datetime :lastremindedon

      t.timestamps

    end
  end
end
