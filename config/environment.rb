require 'bundler/setup'
require 'io/console'
require 'pry'
require 'uri'
require 'net/http'
require 'json'
require 'require_all'
require 'tty-prompt'
require 'tty-box'
require 'tty-screen'
require 'tty-progressbar'
require 'tty-reader'

Bundler.require

ActiveRecord::Base.establish_connection(
    adapter: 'sqlite3',
    database: 'db/development.db'
)
require_all 'lib'