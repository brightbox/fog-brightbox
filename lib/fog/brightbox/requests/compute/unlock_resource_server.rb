module Fog
  module Brightbox
    class Compute
      class Real
        # @param [String] identifier Unique reference to identify the resource
        # @param [Hash] options
        # @option options [Boolean] :nested passed through with the API request. When true nested resources are expanded.
        #
        # @return [Hash] if successful Hash version of JSON object
        #
        # @see https://api.gb1.brightbox.com/1.0/#server_unlock_resource_server
        #
        def unlock_resource_server(identifier, options = {})
          return nil if identifier.nil? || identifier == ""
          wrapped_request("put", "/1.0/servers/#{identifier}/unlock_resource", [200], options)
        end
      end
    end
  end
end
