class CardSerializer < ActiveModel::Serializer
  attributes :id, :genre, :side_a, :side_b
end
