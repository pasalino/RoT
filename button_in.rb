require 'pi_piper'

puts "Press the switch to get started"

#Add watch 
#invert: invert HIGH and LOW level 
PiPiper.watch :pin => 23, :invert => true do |pin|
  puts "Pin changed from #{pin.last_value} to #{pin.value}"
end

#This method block thread
EventMachine.run
