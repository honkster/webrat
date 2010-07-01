require "rack"
require "nokogiri"

module Webrat
<<<<<<< HEAD
  VERSION = "0.6.0.10"
=======
  VERSION = "0.7.2.pre"
>>>>>>> 4881ce82bb30528957c9ce9a12fcaf376d7a428a

  autoload :MechanizeAdapter, "webrat/adapters/mechanize"
  autoload :MerbAdapter, "webrat/adapters/merb"
  autoload :RackAdapter, "webrat/adapters/rack"
  autoload :RailsAdapter, "webrat/adapters/rails"
  autoload :SinatraAdapter, "webrat/adapters/sinatra"

  # The common base class for all exceptions raised by Webrat.
  class WebratError < StandardError
  end
end

require "webrat/core"
