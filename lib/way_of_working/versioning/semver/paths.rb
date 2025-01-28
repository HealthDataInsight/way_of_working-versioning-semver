# frozen_string_literal: true

require 'pathname'

module WayOfWorking
  module Versioning
    # Mixin that provides a couple of pathname convenience methods
    module Semver
      class << self
        def root
          Pathname.new(File.expand_path('../../../..', __dir__))
        end

        def source_root
          root.join('lib', 'way_of_working', 'versioning', 'semver', 'templates')
        end
      end
    end
  end
end
