require 'pi_piper'
include PiPiper

gpiopin =  18

prompt = "Press 1 to activate, 0 to disactivate, X to Exit"

pinobj = PiPiper::Pin.new(:pin => gpiopin, :direction => :out)

puts prompt

loop do
    print "Set: "
    setl = gets.chomp

    if setl == "1"
        pinobj.on
        puts "LED ON"
    elsif setl == "0"
        pinobj.off
        puts "LED OFF"
    elsif setl.downcase == "x"
        break
    else
        puts prompt
    end
end