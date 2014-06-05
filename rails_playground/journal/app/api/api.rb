# The line below must be uncommented to work.
# require 'v1'

module Journal
  class API < Grape::API
    mount Version::V1
  end
end