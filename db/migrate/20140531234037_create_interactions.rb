class CreateInteractions < ActiveRecord::Migration
  def change
    create_table :interactions do |t|
      t.integer :user_id
      t.integer :contact_id
      t.date :date
      t.text :message
      t.date :lastremindedon

      t.timestamps

    end
  end
end
