class CreateAirbnbs < ActiveRecord::Migration[6.1]
  def change

    create_table :airbnbs do |t|
      t.string :title
      t.string :location
      t.string :description
      t.string :size
      t.binary :image
      t.binary :image2
      t.binary :image3
      t.string :price

     
      t.references :admin,foreign_key:true
      t.timestamps
    end

  end
end
