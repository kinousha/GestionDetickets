class CreatePersonne < ActiveRecord::Migration[5.2]
  def change
    create_table :personnes do |t|
      t.string :nom
      t.string :prenom
    end
  end
end
