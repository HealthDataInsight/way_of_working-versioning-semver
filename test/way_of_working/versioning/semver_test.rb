# frozen_string_literal: true

require 'test_helper'

module WayOfWorking
  module Versioning
    class SemverTest < Minitest::Test
      def test_that_it_has_a_version_number
        refute_nil ::WayOfWorking::Versioning::Semver::VERSION
      end
    end
  end
end
