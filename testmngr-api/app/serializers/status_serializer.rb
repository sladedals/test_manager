class StatusSerializer < ActiveModel::Serializer
  attributes :id, :name
  has_many :test_cases
end
