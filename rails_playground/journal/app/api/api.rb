module Journal
  class API < Grape::API
    mount Version::V1
  end
end