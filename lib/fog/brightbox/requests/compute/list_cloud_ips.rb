module Fog
  module Brightbox
    class Compute
      class Real
        # Lists summary details of cloud IP addresses owned by the account.
        #
        # @param [Hash] options
        # @option options [Boolean] :nested passed through with the API request. When true nested resources are expanded.
        #
        # @return [Hash] if successful Hash version of JSON object
        #
        # @see https://api.gb1.brightbox.com/1.0/#cloud_ip_list_cloud_ips
        #
        def list_cloud_ips(options = {})
          wrapped_request("get", "/1.0/cloud_ips", [200], options)
        end
      end
    end
  end
end
