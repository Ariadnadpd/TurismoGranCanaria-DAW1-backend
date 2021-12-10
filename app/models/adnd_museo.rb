class AdndMuseo < ApplicationRecord
    validates :titulo,
        presence: {presence: true, message: ': ¡El título no puede estar en blanco, es un campo requerido!'}, 
        length: { maximum: 50, message: ': ¡El título debe de tener como máximo 50 caracteres!'},
        length: { minimum: 4, message: ': ¡El título debe de tener como mínimo 4 caracteres!'}
    validates :subtitulo,
        presence: {presence: true, message: ': ¡El subtítulo no puede estar en blanco, es un campo requerido!'},
        length: { maximum: 50, message: ': ¡El subtítulo debe de tener como máximo 50 caracteres!'},
        length: { minimum: 3, message: ': ¡El subtítulo debe de tener como mínimo 3 caracteres!'}
    validates :localizacion,
        presence: {presence: true, message: ': ¡La localización no puede estar en blanco, es un campo requerido!'},
        length: { maximum: 50, message: ': ¡La localización debe de tener como máximo 50 caracteres!'},
        length: { minimum: 5, message: ': ¡La localización debe de tener como mínimo 5 caracteres!'}
    validates :telefono,
        presence: {presence: true, message: ': ¡El teléfono no puede estar en blanco, es un campo requerido!'},
        format: { with: /\d{9}\z/i, message: ': ¡El teléfono debe contener 9 números!'},
        length: { maximum: 9, message: ': ¡El teléfono no puede contener más de 9 números!'}
    validates :sitioweb,
        presence: {presence: true, message: ': ¡El sitio web no puede estar en blanco, es un campo requerido!'},
        length: {minimum: 14, message: ': ¡El sitio web debe de tener como mínimo 14 caracteres!'}
end
