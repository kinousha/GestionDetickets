class AddForeignkeyTicketOnPersonne < ActiveRecord::Migration[5.2]
  def change
    add_column :tickets, :personne_id, :integer
    add_index :tickets, :personne_id, unique: true
  end
end
