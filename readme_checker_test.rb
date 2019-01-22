require 'rubygems'
require 'bundler'
Bundler.require(:default)

class ReadmeCheckerTest < Test::Unit::TestCase
  def readme
    @readme ||= File.read('./README.md')
  end
end
