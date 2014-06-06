module Version
  class V3 < Grape::API
    version 'v3'
    format :json

    helpers do
      def display_hello_message
        "Hello!"
      end
    end

    resource 'entries' do
      desc "Create a message"
      params do
        requires :message, type: String, desc: "Your entry"
        requires :author, type: String, desc: "Your author"
      end
      post do
        Entry.create!({
          message: params[:message],
          author: params[:author]
        })
        { entry: display_hello_message}
      end

      desc "Delete a status."
      params do
        requires :id, type: Integer, desc: "Status ID."
      end
      delete ':id' do
        Entry.find(params[:id]).destroy
        "You deleted the record."
      end
    end
  end
end