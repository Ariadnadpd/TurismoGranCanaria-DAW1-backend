class CreateAdndPnaturales < ActiveRecord::Migration[6.1]
  def change
    create_table :adnd_pnaturales do |t|
      t.string :titulo
      t.string :subtitulo
      t.string :ruta

      t.timestamps
    end
  end
end
