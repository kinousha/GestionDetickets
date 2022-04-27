class CreateTickets < ActiveRecord::Migration[5.2]
  def change
    create_table :tickets do |t|
      t.string :titre
      t.text :desctiption
      t.string :statut
      t.timestamps
    end
   end
    
end
