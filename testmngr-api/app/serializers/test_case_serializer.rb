class TestCaseSerializer < ActiveModel::Serializer
  attributes :id,:title
  belongs_to :status
end
