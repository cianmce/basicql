module TodoFields
  extend ActiveSupport::Concern

  included do
    field :todo, Types::Todo, description: "todoz", null: true
  end

  def todo
    ::Todo.first
  end
end

class Types::QueryType < Types::BaseObject
  include TodoFields
end

