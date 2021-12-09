class CreateActBuceos < ActiveRecord::Migration[6.1]
  def change
    create_table :act_buceos do |t|
      t.string :titulo
      t.string :subtitulo
      t.string :localizacion
      t.string :telefono
      t.string :sitioweb

      t.timestamps
    end
  end
end
