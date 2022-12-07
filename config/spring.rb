if Object.const_defined?("Spring::Watcher::Listen")
  require "decidim/spring"

  Spring.watch(
    ".ruby-version",
    ".rbenv-vars",
    "tmp/restart.txt",
    "tmp/caching-dev.txt"
  )
end
