require 'benchmark'
include Benchmark

class BenchmarkingFilter
  def self.filter(controller, &block)
    results = Benchmark.measure(&block)
    controller.response.body = controller.response.body.sub "</body>", "<pre>      user     system      total\n<pre>#{results}</pre></body>"
  end
end

class ApplicationController < ActionController::Base
  protect_from_forgery
  around_filter BenchmarkingFilter
end

