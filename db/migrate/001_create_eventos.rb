class CreateEventos < ActiveRecord::Migration
  def self.up
    create_table :eventos do |t|
      t.string :titulo
      t.string :palestrante
      t.date :data
      t.time :inicio
      t.time :fim
      t.string :tipo
      t.string :area

      t.timestamps
    end
  end

  def self.down
    drop_table :eventos
  end
end
