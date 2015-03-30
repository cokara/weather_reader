require 'sinatra'
require 'haml'
require 'sass/plugin/rack'
require 'nokogiri'
require 'httparty'
require './weather'

Sass::Plugin.options[:style] = :compressed
use Sass::Plugin::Rack

run Sinatra::Application
