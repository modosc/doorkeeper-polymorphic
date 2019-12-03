# frozen_string_literal: true

FactoryBot.define do
  factory :access_grant, class: "Doorkeeper::AccessGrant" do
    resource_owner
    application
    redirect_uri { "https://app.com/callback" }
    expires_in { 100 }
    scopes { "public write" }
  end

  factory :access_token, class: "Doorkeeper::AccessToken" do
    resource_owner
    application
    expires_in { 2.hours }

    factory :clientless_access_token do
      application { nil }
    end
  end

  factory :application, class: "Doorkeeper::Application" do
    sequence(:name) { |n| "Application #{n}" }
    redirect_uri { "https://app.com/callback" }
  end

  # do not name this factory :user, otherwise it will conflict with factories
  # from applications that use doorkeeper factories in their own tests
  factory :doorkeeper_testing_user, aliases: [:resource_owner], class: :user
end
