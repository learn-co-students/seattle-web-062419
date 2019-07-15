# Rack provides a minimal interface between webservers that support Ruby and Ruby frameworks.
#
# To use Rack, provide an "app": an object that responds to the call method,
# taking the environment hash as a parameter, and returning an Array with three elements:
#
# The HTTP response code
# A Hash of headers
# The response body, which must respond to each
# You can handle an app directly:
require 'pry'
class App
  def call(environemnt_hash)
    request = Rack::Request.new(environemnt_hash)
    resp = Rack::Response.new
    # binding.pry
    if request.path == "/"
      resp.write("Welcome to Flatiron School!")
    else
      resp.write("Welcome to Flatiron School #{request.path.gsub("/",'').capitalize}!")
    # elsif request.path == "/new_york"
    #   resp.write("Welcome to Flatiron School New York!")
      # body = ["Welcome to Flatiron School"]
    end
    resp.finish
    # response_code = 200
    # [response_code, {}, body ]
  end
end

run App.new
