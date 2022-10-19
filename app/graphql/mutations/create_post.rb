# frozen_string_literal: true

module Mutations
  # Create Post Mutation
  class CreatePost < BaseMutation
    # arguments passed to the `resolve` method
    argument :title, String, required: true
    argument :body, String, required: true

    # return type from mutation
    type Types::PostType

    def resolve(title: nil, body: nil)
      Post.create!(title: title, body: body)
    end
  end
end
