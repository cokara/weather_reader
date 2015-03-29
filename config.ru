require 'sinatra'
require 'haml'
require 'sass/plugin/rack'
require './app'
require 'nokogiri'
require 'httparty'

Sass::Plugin.options[:style] = :compressed
use Sass::Plugin::Rack

run Sinatra::Application
