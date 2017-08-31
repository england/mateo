class Visitor < ApplicationRecord
  enum medium: [:cpc, :organic, :affiliate, :email]
end
