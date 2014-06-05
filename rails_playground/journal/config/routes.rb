require 'api'

Rails.application.routes.draw do
  mount API => "/"
end
