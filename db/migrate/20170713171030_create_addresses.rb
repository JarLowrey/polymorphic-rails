class CreateAddresses < ActiveRecord::Migration[5.1]
  def change
    create_table :addresses do |t|
      t.string :address
      t.references :addressable, polymorphic: true, index: true

      t.timestamps
    end
  end
end
