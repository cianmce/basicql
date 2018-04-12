class Types::Todo < Types::BaseObject
  description "Things to do (may have already been done)"

  field :id, Int, "todo id", null: false
  field :text, String, "todo id", null: true
  field :complete, Boolean, "is complete", null: true
end
