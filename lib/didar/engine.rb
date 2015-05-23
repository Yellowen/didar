if File.exists?([File.expand_path("../../../", __FILE__),
                 ".development"].join("/"))
  $LOAD_PATH <<  File.expand_path('../../../../Faalis/lib', __FILE__)
end

require "faalis"

module Didar
  class Engine < ::Rails::Engine
    isolate_namespace Didar
    engine_name 'didar'

    # Map `api` to `API` in Rails autoload
    ActiveSupport::Inflector.inflections(:en) do |inflect|
      inflect.acronym 'API'
    end

    ::Faalis::Engine.setup do |config|
      config.models_with_permission = []
    end
    include ::Faalis::Extension::Base
    #register_extension "didar", self
    #::Faalis::Engine.dashboard_js_manifest = "didar/application.js"
  end
end
