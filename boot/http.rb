require "foobara/rack_connector"

default_serializers = [
  Foobara::CommandConnectors::Serializers::ErrorsSerializer,
  Foobara::CommandConnectors::Serializers::JsonSerializer
]

rack_connector = Foobara::CommandConnectors::Http::Rack.new(default_serializers:)

rack_connector.connect(Foobara::OpenAiApi)

RACK_CONNECTOR = rack_connector
