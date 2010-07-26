class CreatePartecipanti < ActiveRecord::Migration
  def self.up
    create_table :partecipanti do |t|
      t.string :nome
      t.string :cognome
      t.string :nick
      t.string :mail
      t.string :telefono
      t.integer :adulti
      t.integer :bambini , :default => 0
      t.boolean :venerdi , :default => false
      t.boolean :sabato , :default => false
      t.boolean :pranzo_domenica , :default => false
      t.boolean :offroad , :default => false
      t.string :targa
      t.string :modello_anno
      t.boolean :caparra , :default => false
      t.integer :versato , :default => 0

      t.timestamps
    end
  end

  def self.down
    drop_table :partecipanti
  end
end
