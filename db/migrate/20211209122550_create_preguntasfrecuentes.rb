class CreatePreguntasfrecuentes < ActiveRecord::Migration[6.1]
  def change
    create_table :preguntasfrecuentes do |t|
      t.string :pregunta
      t.string :respuesta

      t.timestamps
    end
  end
end
