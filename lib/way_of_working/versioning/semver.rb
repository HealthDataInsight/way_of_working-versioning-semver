# frozen_string_literal: true

require 'way_of_working'
require_relative 'semver/paths'
require 'zeitwerk'

# If way_of_working-audit-github is used we can add a rule
begin
  require 'way_of_working/audit/github/rules/registry'
  require_relative 'semver/github_audit_rule'
rescue LoadError # rubocop:disable Lint/SuppressedException
end

loader = Zeitwerk::Loader.for_gem_extension(WayOfWorking::Versioning)
loader.ignore("#{__dir__}/semver/plugin.rb")
loader.setup

module WayOfWorking
  module Versioning
    module Semver
      class Error < StandardError; end
    end
  end

  module SubCommands
    # # This reopens the "way_of_working exec" sub command
    # class Exec
    #   register(Versioning::Semver::Generators::Exec, 'versioning', 'versioning',
    # end

    # # This reopens the "way_of_working init" sub command
    # class Init
    #   register(Versioning::Semver::Generators::Init, 'versioning', 'versioning',
    # end

    # # This reopens the "way_of_working new" sub command
    # class New
    #   register(Versioning::Semver::Generators::New, 'versioning', 'versioning',
    # end
  end
end
