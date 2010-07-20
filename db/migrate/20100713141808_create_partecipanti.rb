class CreatePartecipanti < ActiveRecord::Migration
  def self.up
    create_table :partecipanti do |t|
      t.string :nome
      t.string :cognome
      t.string :nick
      t.string :mail
      t.string :telefono
      t.integer :adulti
      t.integer :bambini
      t.boolean :venerdi
      t.boolean :sabato
      t.boolean :pranzo_domenica
      t.boolean :offroad
      t.string :targa
      t.string :modello_anno
      t.boolean :caparra
      t.integer :versato

      t.timestamps
    end
  end

  def self.down
    drop_table :partecipanti
  end
end
