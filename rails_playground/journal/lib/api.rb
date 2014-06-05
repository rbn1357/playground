# require 'v1'
#The line above fixes the problem 

class API < Grape::API
  prefix 'api'
  mount Version::V1
end
