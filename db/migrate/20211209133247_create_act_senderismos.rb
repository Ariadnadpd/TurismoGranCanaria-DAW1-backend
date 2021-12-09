class CreateActSenderismos < ActiveRecord::Migration[6.1]
  def change
    create_table :act_senderismos do |t|
      t.string :titulo
      t.string :subtitulo
      t.string :ruta

      t.timestamps
    end
  end
end
