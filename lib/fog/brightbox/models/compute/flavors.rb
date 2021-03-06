require "fog/brightbox/models/compute/flavor"

module Fog
  module Brightbox
    class Compute
      class Flavors < Fog::Collection
        model Fog::Brightbox::Compute::Flavor

        def all
          data = service.list_server_types
          load(data)
        end

        def get(identifier)
          data = service.get_server_type(identifier)
          new(data)
        rescue Excon::Errors::NotFound
          nil
        end
      end
    end
  end
end
