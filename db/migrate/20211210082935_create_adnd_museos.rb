class CreateAdndMuseos < ActiveRecord::Migration[6.1]
  def change
    create_table :adnd_museos do |t|
      t.string :titulo
      t.string :subtitulo
      t.string :localizacion
      t.string :telefono
      t.string :sitioweb

      t.timestamps
    end
  end
end
