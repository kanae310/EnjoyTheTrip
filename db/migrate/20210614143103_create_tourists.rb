class CreateTourists < ActiveRecord::Migration[5.2]
  def change
    create_table :tourists do |t|
      t.string :title
      t.text :prace
      t.text :impression
      t.string :image_id

      t.timestamps
    end
  end
end
