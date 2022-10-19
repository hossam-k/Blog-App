# frozen_string_literal: true

module Types
  # This Class will hold all mutation Queries.
  class MutationType < Types::BaseObject
    field :create_post, mutation: Mutations::CreatePost
    field :create_user, mutation: Mutations::CreateUser
  end
end
