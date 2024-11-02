# frozen_string_literal: true

class TrailStatus < ApplicationRecord
  belongs_to :trail

  enum :status, {
    open: 'open',
    closed: 'closed',
    restricted: 'restricted'
  }
end
