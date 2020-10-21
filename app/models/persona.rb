class Persona < ApplicationRecord

	validates :nombre, presence: true 
	validates :apellido, presence: true
	validates :cedula, presence: true, numericality: true, uniqueness: true #validacion para que el ruc no se repita
	validates :correo, presence: true
	
end
