class Perfilempresa < ApplicationRecord
	belongs_to :user
	belongs_to :empresa
end
