require 'singleton'

class StaticPagesController < ApplicationController  
  @@pinobj = PiPiper::Pin.new(:pin => 18, :direction => :out) 
  def home
	if params[:a] == "1" 
        	@@pinobj.on 
	else
		@@pinobj.off
	end
	
  end
end
