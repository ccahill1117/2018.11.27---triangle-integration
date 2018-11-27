require 'sinatra'
require 'sinatra/reloader'
require './lib/Triangle'

get ('/') do
  @description = "this application will determine if the dimensions make a triangle, and if so, which kind."
  # "Testing Sinatra"
  erb(:triangle_form)
end

get ('/output') do
  @first_length = params.fetch("first_length")
  # x = params.fetch("first_length").to_i
  @second_length = params.fetch("second_length")
  # y = params.fetch("second_length").to_i
  @third_length = params.fetch("third_length")
  # z = params.fetch("third_length").to_i

  @triangle = Triangle.new(@first_length,@second_length,@third_length)
  @triangle.triangle?

  erb(:output)
end
