class Empresa < ApplicationRecord
	validates :ruc, presence: true, numericality: true, uniqueness: true #validacion para que el ruc no se repita
	validates :nombre, presence: true
	validates :direccion, presence: true
	validates :telefono, presence: true, numericality: true
	validates :email, presence: true


	has_many :exp_laborals
	has_many :perfilempresas
end
