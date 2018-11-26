# frozen_string_literal: true

require_relative 'commands/with_engines_test_command.rb'

aliases = {
  g: 'generate',
  d: 'destroy',
  c: 'console',
  s: 'server',
  db: 'dbconsole',
  r: 'runner',
  t: 'test',
  ta: 'with_engines_test',
  test_all: 'with_engines_test'
}

command = ARGV.shift
command = aliases[command.to_sym] || command.to_s

Rails::Command.invoke command, ARGV
