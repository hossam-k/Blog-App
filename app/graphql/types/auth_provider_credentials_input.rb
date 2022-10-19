# frozen_string_literal: true

module Types
  # credentials Input Object
  class AuthProviderCredentialsInput < BaseInputObject
    graphql_name 'AUTH_PROVIDER_CREDENTIALS'

    description 'Auth Credential Attributes'
    argument :email, String, required: true
    argument :password, String, required: true
  end
end
