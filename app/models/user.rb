class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
    has_many :postulantes
    has_many :estudios
    has_many :personas
    has_many :exp_laborals
	has_many :perfilempresas	
	has_many :empresas
	has_many :perfilempresas

end
