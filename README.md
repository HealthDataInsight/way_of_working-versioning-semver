# WayOfWorking::Versioning::Semver

> [!IMPORTANT]
> **This repository has been archived.**
>
> The Versioning (Semantic Versioning) feature has been merged into the main [`way_of_working`](https://github.com/HealthDataInsight/way_of_working) gem, where it is now a built-in, opt-in feature. Enable it by requiring it:
>
> ```ruby
> require 'way_of_working/versioning/semver'
> ```
>
> Then use `way_of_working init versioning` as before. This repository is no longer maintained.

<!-- Way of Working: Main Badge Holder Start -->
![Way of Working Badge](https://img.shields.io/badge/Way_of_Working-v2.0.1-%238169e3?labelColor=black)
<!-- Way of Working: Additional Badge Holder Start -->
<!-- Way of Working: Badge Holder End -->

[![Gem Version](https://badge.fury.io/rb/way_of_working-versioning-semver.svg)](https://badge.fury.io/rb/way_of_working-versioning-semver)

This is a plugin for the [Way of Working](https://github.com/HealthDataInsight/way_of_working) framework that uses [Semantic Versioning][semver] version 2.0.0 to define the versioning standard for communicating software changes and managing releases across projects.

## Installation

Install the gem and add to the application's Gemfile by executing:

```bash
bundle add way_of_working-versioning-semver
```

If bundler is not being used to manage dependencies, install the gem by executing:

```bash
gem install way_of_working-versioning-semver
```

## Usage

To add a [Semantic Versioning][semver] documentation to your project, use the following at the command line:

```bash
way_of_working init versioning
```

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake test` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and the created tag, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at [this repository][repo]. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [code of conduct][coc].

## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).

## Code of Conduct

Everyone interacting in the way_of_working-versioning-semver project's codebases, issue trackers, chat rooms and mailing lists is expected to follow the [code of conduct][coc].

[semver]: https://semver.org
[repo]: https://github.com/HealthDataInsight/way_of_working-versioning-semver
[coc]: https://github.com/HealthDataInsight/way_of_working-versioning-semver/blob/main/CODE_OF_CONDUCT.md
