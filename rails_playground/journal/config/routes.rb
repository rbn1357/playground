require 'api'

Rails.application.routes.draw do
  mount Journal::API => "/"
end
