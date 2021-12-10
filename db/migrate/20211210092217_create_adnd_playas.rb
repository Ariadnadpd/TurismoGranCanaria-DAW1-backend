class CreateAdndPlayas < ActiveRecord::Migration[6.1]
  def change
    create_table :adnd_playas do |t|
      t.string :titulo
      t.string :subtitulo
      t.string :localizacion

      t.timestamps
    end
  end
end
