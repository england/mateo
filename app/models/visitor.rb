class Visitor < ApplicationRecord
  enum medium: [:cpc, :organic, :affiliate, :email]

  belongs_to :activity
end
