class ReviewSerializer
  include FastJsonapi::ObjectSerializer
  attributes :title, :description, :score, :museum_id
end
