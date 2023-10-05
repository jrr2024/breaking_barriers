# frozen_string_literal: true

json.extract!(user, :id, :access_level, :first_name, :last_name, :major, :year, :phone_number, :email, :created_at, :updated_at)
json.url(user_url(user, format: :json))