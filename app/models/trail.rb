# frozen_string_literal: true

class Trail < ApplicationRecord
  belongs_to :trail_network
  has_many :trail_statuses
end
