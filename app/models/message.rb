class Message < ApplicationRecord
  belongs_to :room, dependet: :destroy
end
