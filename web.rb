require 'rubygems'
require 'sinatra'

get '/' do
	erb :root
end

get '/:input' do
	ratio = [3, 2, 1]
	@cream = ratio[0]
	@flavor = ratio[1]
	@coco_milk = ratio[2]
	ratio_sum = 0
	ratio.each { |a| ratio_sum += a }
	@container = params[:input]
	@multiplier = @container.to_i / ratio_sum

	erb :calc
end