class CreateGastPostres < ActiveRecord::Migration[6.1]
  def change
    create_table :gast_postres do |t|
      t.string :titulo
      t.string :subtitulo
      t.string :localizacion
      t.string :telefono
      t.string :rss_facebook
      t.string :rss_instagram
      t.string :informacion

      t.timestamps
    end
  end
end
