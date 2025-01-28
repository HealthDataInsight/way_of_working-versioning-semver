# frozen_string_literal: true

require 'way_of_working/audit/github/rules/base'

module WayOfWorking
  module Versioning
    # The namespace for this plugin
    module Semver
      class GithubAuditRule < ::WayOfWorking::Audit::Github::Rules::Base
        source_root WayOfWorking::CodeLinting::Hdi.source_root

        def validate
          # @errors << 'No semver plugin README Badge' unless plugin_badge?

          validate_repo_file_contains_source_file(
            # '.github/example/template.yml',
          )
        end

        private

        def repo_file_contains_source_file?(path)
          repo_file_contains?(path, File.read(self.class.source_root.join(path)))
        end

        def repo_file_contains?(path, text)
          remote_content = repo_file_contents(path)
          return false if remote_content.nil?

          remote_content.include?(text)
        end

        def validate_repo_file_contains_source_file(*paths)
          paths.each do |path|
            if repo_file_contents(path).nil?
              @errors << "#{path} missing"
              next
            end

            @errors << "#{path} does not match the source template" unless repo_file_contains_source_file?(path)
          end
        end

        # def plugin_badge?
        #   readme_content.include?("TODO: Markdown for plugin badge")
        # end
      end

      ::WayOfWorking::Audit::Github::Rules::Registry.register(
        GithubAuditRule, 'TODO: versioning using semver'
      )
    end
  end
end
