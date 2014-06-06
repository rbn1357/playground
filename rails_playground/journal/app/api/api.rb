module Journal
  class API < Grape::API
    prefix 'api'
    mount Version::V1
    mount Version::V2
    mount Version::V3
  end
end 
