# frozen_string_literal: true

class Trail < ApplicationRecord
  belongs_to :trail_network
  has_many :trail_statuses

  enum :grade, {
    green: 'green',
    blue: 'blue',
    black: 'black',
    double_black: 'double_black',
    ungraded: 'ungraded'
  }

end
