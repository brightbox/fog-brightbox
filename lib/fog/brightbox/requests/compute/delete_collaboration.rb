module Fog
  module Brightbox
    class Compute
      class Real
        # Cancels or completes the collaboration
        #
        # @param [String] identifier Unique reference to identify the resource
        # @param [Hash] options
        # @option options [Boolean] :nested passed through with the API request. When true nested resources are expanded.
        #
        # @return [Hash] if successful Hash version of JSON object
        #
        # @see https://api.gb1.brightbox.com/1.0/#collaboration_delete_collaboration
        #
        def delete_collaboration(identifier, options = {})
          return nil if identifier.nil? || identifier == ""
          wrapped_request("delete", "/1.0/collaborations/#{identifier}", [200], options)
        end
      end
    end
  end
end
