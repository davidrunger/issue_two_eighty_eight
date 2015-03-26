# issue_two_eighty_eight

Illustrates issue #288 at guard/guard-rspec

As currently configured, this raises the error mentioned at
[guard-rspec #288][issue-288].

[issue-288]: https://github.com/guard/guard-rspec/issues/288

## Setup

0. `bundle exec rake db:migrate`

## To reproduce:

0. `bundle exec guard`
0. Open `spec/models/user_spec.rb` in your editor. Save.

This produces the following output:

```
16:47:54 - INFO - Running: spec
.

Deprecation Warnings:

 The Guard::RSpec::Formatter::NotificationRSpec formatter uses the
 deprecated formatter interface not supported directly by RSpec 3.
 To continue to use this formatter you must install the
 `rspec-legacy_formatters` gem, which provides support for legacy
 formatters or upgrade the formatter to a compatible version.  Formatter
 added at:
 /Users/david/.rbenv/versions/2.1.2/lib/ruby/gems/2.1.0/gems/rspec-core-3.2.2/exe/rspec:4:in
 `<top (required)>'


If you need more of the backtrace for any of these deprecations to
identify where to make the necessary changes, you can configure
`config.raise_errors_for_deprecations!`, and it will turn the
deprecation warnings into errors, giving you the full backtrace.

1 deprecation warning total

Finished in 0.00478 seconds (files took 1.69 seconds to load)
1 example, 0 failures
```

## Removing `gem 'spring-watcher-listen'` removes the warnings

0. Remove `gem 'spring-watcher-listen'` from the Gemfile
0. I deleted `Gemfile.lock` and `bundle install`ed.
0. Perform the replication steps described above. The deprecation
warning no longer occurs.
