module Journal
  class V1 < Grape::API
    format :json
    
    version 'v1'
    resource 'entries' do
      get do
        { messages: Entry.all }
      end

      get ':id' do
        { entry: Entry.find(params[:id]) }
      end
    end
  end
end