# frozen_string_literal: true

source "https://rubygems.org"

ruby RUBY_VERSION

DECIDIM_VERSION = "0.27.1"
BRANCH = "feature/grant-compliance"

gem "decidim", DECIDIM_VERSION
# gem "decidim-conferences", DECIDIM_VERSION
# gem "decidim-consultations", DECIDIM_VERSION
# gem "decidim-elections", DECIDIM_VERSION
# gem "decidim-initiatives", DECIDIM_VERSION
# gem "decidim-templates", DECIDIM_VERSION
gem "decidim-vocdoni", github: "decidim-vocdoni/decidim-module-vocdoni", branch: BRANCH

gem "bootsnap", "~> 1.3"
gem "faker", "~> 2.14"
gem "puma", ">= 5.0.0"
gem "sentry-rails", "~> 5.8"
gem "sentry-ruby", "~> 5.8"
gem "wicked_pdf", "~> 2.1"

group :development, :test do
  gem "byebug", "~> 11.0", platform: :mri

  gem "brakeman"
  gem "decidim-dev", DECIDIM_VERSION
end

group :development do
  gem "letter_opener_web", "~> 2.0"
  gem "listen", "~> 3.1"
  gem "spring", "~> 2.0"
  gem "spring-watcher-listen", "~> 2.0.0"
  gem "web-console", "~> 4.2"

  # For deployment
  gem "capistrano", "~> 3.17"
  gem "capistrano-passenger", "~> 0.2.1"
  gem "capistrano-rails", "~> 1.6"
  gem "capistrano-rbenv", "~> 2.2"
  gem "bcrypt_pbkdf", "~> 1.1"
  gem "ed25519", "~> 1.3"
end

group :production do
  gem "passenger", "~> 6.0"
end
