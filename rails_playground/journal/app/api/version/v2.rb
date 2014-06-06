module Version
  class V2 < Grape::API
    format :json
    version 'v2', using: :path

    resource 'entries' do
      desc "Returns all entries"
      get do
        "This is a test of the national..."
      end

      desc "Finds a specific Entry"
      params do
        requires :id, type: Integer, desc: "status id"
      end
      get ':id' do
        { entry: Entry.find(params[:id]) }
      end
    end
  end
end

# practice with curl -H and others
# write api call to post a message