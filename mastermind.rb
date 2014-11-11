lib_pattern = File.expand_path '../lib/*.rb',__FILE__
Dir[lib_pattern].each { |file| require file}

CLI.new($stdin, $stdout).call
#edit my loadpath to '.' ?


#current_dir = File.expand_path('.', __dir__)
# $LOAD_PATH.unshift(current_dir)
# CLI.new($stdin, $stdout).call



# lib_dir = File.expand_path('lib', __dir__)
# $LOAD_PATH.unshift(lib_dir)
# require 'cli'
#
# CLI.new($stdin, $stdout).call
