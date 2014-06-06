module Version
  class V1 < Grape::API
    format :json
    version 'v1'

    resource 'entries' do
      desc "Returns all entries"
      get do
        { messages: Entry.all }
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