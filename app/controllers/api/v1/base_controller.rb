class Api::V1::BaseController < ApplicationController
    # Convenience methods for serializing models:
    def serialize_model(model, options = {})
      options[:is_collection] = false
      JSONAPI::Serializer.serialize(model, options)
    end
  
    def serialize_models(models, options = {})
      options[:is_collection] = true
      JSONAPI::Serializer.serialize(models, options)
    end
end