module Fog
  module Brightbox
    class Compute
      class Real
        # Removes a number of listeners from a load balancer to cease balancing across nodes for those settings.
        #
        # @param [String] identifier Unique reference to identify the resource
        # @param [Hash] options
        # @option options [Array] :listeners Array of Listener parameters
        # @option options [Boolean] :nested passed through with the API request. When true nested resources are expanded.
        #
        # @return [Hash] if successful Hash version of JSON object
        # @return [NilClass] if no options were passed
        #
        # @see https://api.gb1.brightbox.com/1.0/#load_balancer_remove_listeners_load_balancer
        #
        def remove_listeners_load_balancer(identifier, options)
          return nil if identifier.nil? || identifier == ""
          wrapped_request("post", "/1.0/load_balancers/#{identifier}/remove_listeners", [202], options)
        end
      end
    end
  end
end
