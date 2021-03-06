module Fog
  module Brightbox
    class Compute
      class Real
        # Get full details of the interface.
        #
        # @param [String] identifier Unique reference to identify the resource
        # @param [Hash] options
        # @option options [Boolean] :nested passed through with the API request. When true nested resources are expanded.
        #
        # @return [Hash] if successful Hash version of JSON object
        #
        # @see https://api.gb1.brightbox.com/1.0/#interface_get_interface
        #
        def get_interface(identifier, options = {})
          return nil if identifier.nil? || identifier == ""
          wrapped_request("get", "/1.0/interfaces/#{identifier}", [200], options)
        end
      end
    end
  end
end
