require 'user_engage/errors'
require 'json'

module UserEngage
  module Operation
    module Create
      def create(params = {})
        check_for_unsupported_params!(params)
        attributes = post_resource(params)
        new(attributes)
      end

      #####################
      ## Private methods ##
      #####################
      private

      def post_resource(params)
        path = "/#{resource_name}/"
        response = UserEngage.client.post(path, params.to_json)
        check_for_existing_resource!(response, params)
        JSON.parse(response.body, symbolize_names: true)
      end
    end
  end
end
