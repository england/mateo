Ransack.configure do |config|
  config.add_predicate 'cont_any_of_string',
                       arel_predicate: 'matches_any',
                       formatter: proc { |v| v.split("|").map { |s| "%#{s}%"} },
                       validator: proc { |v| v.present? },
                       type: :string
end
