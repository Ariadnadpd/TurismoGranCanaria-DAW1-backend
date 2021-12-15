class ArtAlfareri < ApplicationRecord
    validates :titulo,
        presence: {presence: true, message: ': ¡El título no puede estar en blanco, es un campo requerido!'}, 
        length: { maximum: 50, message: ': ¡El título debe de tener como máximo 50 caracteres!'},
        length: { minimum: 5, message: ': ¡El título debe de tener como mínimo 5 caracteres!'}
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
    validates :email,
        length: { maximum: 50, message: ': ¡El email debe de tener como máximo 50 caracteres!'} , 
        length: {minimum: 6, message: ': ¡El email debe de tener como mínimo 6 caracteres!'},
        format: { with: /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i, message: 'inválido. Un email válido podría ser: daw1.99@gmail.es'}
end
