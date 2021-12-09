class Preguntasfrecuente < ApplicationRecord
    validates :pregunta,
        presence: true, length: { maximum: 300}, length: { minimum: 6}
    validates :respuesta,
        presence: true, length: { maximum: 400}, length: { minimum: 2}
end
