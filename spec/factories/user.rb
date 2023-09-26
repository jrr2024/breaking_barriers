# frozen_string_literal: true

FactoryBot.define do
  factory :user do
    email { 'test@tamu.edu' }
    password { 'secret' }
  end
end
