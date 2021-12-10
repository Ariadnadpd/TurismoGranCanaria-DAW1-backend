class ActSenderismo < ApplicationRecord
    validates :titulo,
        presence: {presence: true, message: ': ¡El título no puede estar en blanco, es un campo requerido!'}, 
        length: {maximum: 50, message: ': ¡El título debe de tener como máximo 50 caracteres!'},
        length: {minimum: 5, message: ': ¡El título debe de tener como mínimo 5 caracteres!'}
    validates :subtitulo,
        presence: {presence: true, message: ': ¡El título no puede estar en blanco, es un campo requerido!'}, 
        length: {maximum: 50, message: ': ¡El subtítulo debe de tener como máximo 50 caracteres!'},
        length: {minimum: 3, message: ': ¡El subtítulo debe de tener como mínimo 3 caracteres!'}
    validates :ruta,
        presence: {presence: true, message: ': ¡El título no puede estar en blanco, es un campo requerido!'}, 
        length: {minimum: 14, message: ': ¡La información debe de tener como mínimo 14 caracteres!'}
end
