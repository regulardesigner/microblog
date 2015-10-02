class Story < ActiveRecord::Base
	validates :status, :post, presence: true
	# rédiger la régle ne permettant pas d'avoir autre chose que Publish et Draft comme status.
	# voir status d'une demande dans webibli
end
