# frozen_string_literal: true

module Mutations
  # Create User Mutation
  class CreateUser < BaseMutation
    # Arguments
    argument :name, String, required: true
    argument :auth_credentials, Types::AuthProviderCredentialsInput, required: false

    # Return
    type Types::UserType

    # Resolver
    def resolve(name: nil, auth_credentials: nil)
      User.create!(
        name: name,
        email: auth_credentials&.[](:email),
        password: auth_credentials&.[](:password)
      )
    end
  end
end
