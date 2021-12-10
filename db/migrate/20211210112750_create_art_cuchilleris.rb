class CreateArtCuchilleris < ActiveRecord::Migration[6.1]
  def change
    create_table :art_cuchilleris do |t|
      t.string :titulo
      t.string :subtitulo
      t.string :localizacion
      t.string :telefono
      t.string :informacion
      t.string :rss_facebook

      t.timestamps
    end
  end
end
