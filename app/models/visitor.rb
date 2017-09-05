class Visitor < ApplicationRecord
  CHANNELS = [:cpc, :organic, :affiliate, :email]

  enum medium: CHANNELS

  belongs_to :activity
end
