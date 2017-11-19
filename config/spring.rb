%w(
  .ruby-version
  .rbenv-vars
  tmp/restart.txt
  config/application.yml
  tmp/caching-dev.txt
).each { |path| Spring.watch(path) }
