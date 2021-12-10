class Preguntasfrecuente < ApplicationRecord
    validates :pregunta,
        presence: true,
        presence: {presence: true, message: ': ¡La pregunta no puede estar en blanco, es un campo requerido!'}, 
        length: {maximum: 300, message: ': ¡La pregunta debe de tener como máximo 300 caracteres!'},
        length: {minimum: 6, message: ': ¡La pregunta debe de tener como mínimo 6 caracteres!'}
    validates :respuesta,
        presence: true,
        presence: {presence: true, message: ': ¡La respuesta no puede estar en blanco, es un campo requerido!'}, 
        length: {maximum: 400, message: ': ¡La respuesta debe de tener como máximo 400 caracteres!'},
        length: {minimum: 2, message: ': ¡La respuesta debe de tener como mínimo 2 caracteres!'}
end
