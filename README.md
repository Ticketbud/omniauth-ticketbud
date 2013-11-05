omniauth-ticketbud
==============
Ticketbud OAuth2 Strategy for OmniAuth 1.x and supports the OAuth 2.0 server-side flow.

*Ticketbud API docs can be found [here](https://api.ticketbud.com).*

## Installation

Add to your `Gemfile`:

```ruby
gem 'omniauth-ticketbud'
```

Then `bundle install`.

## Usage

Here's a quick example, adding the middleware to a Rails app in `config/initializers/omniauth.rb`:

```ruby
Rails.application.config.middleware.use OmniAuth::Builder do
  provider :ticketbud, ENV['TICKETBUD_CLIENT_ID'], ENV['TICKETBUD_CLIENT_SECRET']
end
```

## Auth Hash

Here's an example *Auth Hash* available in `request.env['omniauth.auth']`:

```ruby
{
  :provider => 'ticketbud',
  :uid => '1234567',
  :info => {
    :email => 'foo@bar.com',
    :first_name => 'Brandon',
    :last_name => 'Harris'
  },
  :credentials => {
    :token => 'ABCDEF...',
    :expires => false
  },
  :extra => {
    :raw_info => {
      :user => {
        :id => 1234567,
        :full_name => "Brandon Harris",
        :first_name => "Brandon",
        :last_name => "Harris",
        :email => "foo@bar.com",
        :default_subdomain => "adipisci-71972",
        :event_ids => [
          11111,
          22222
        ]
      }
    }
  }
}
```

## Supported Ruby Versions
`omniauth-ticketbud` is tested under 1.9.3

## Versioning
This library aims to adhere to [Semantic Versioning 2.0.0][semver]. Violations
of this scheme should be reported as bugs. Specifically, if a minor or patch
version is released that breaks backward compatibility, that version should be
immediately yanked and/or a new version should be immediately released that
restores compatibility. Breaking changes to the public API will only be
introduced with new major versions. As a result of this policy, you can (and
should) specify a dependency on this gem using the [Pessimistic Version
Constraint][pvc] with two digits of precision. For example:

    spec.add_dependency 'omniauth-ticketbud', '~> 1.0'

[semver]: http://semver.org/
[pvc]: http://docs.rubygems.org/read/chapter/16#page74


## License

Copyright (c) 2013 by Brandon Harris

Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.