module Fog
  module Brightbox
    class Compute
      class Real
        # Create a new server group for the account.
        #
        # @param [Hash] options
        # @option options [String] :name Editable user label
        # @option options [String] :description Editable user description
        # @option options [Boolean] :nested passed through with the API request. When true nested resources are expanded.
        #
        # @return [Hash] if successful Hash version of JSON object
        # @return [NilClass] if no options were passed
        #
        # @see https://api.gb1.brightbox.com/1.0/#server_group_create_server_group
        #
        def create_server_group(options)
          wrapped_request("post", "/1.0/server_groups", [202], options)
        end
      end
    end
  end
end
