require 'rpi_gpio'

#Reset active pins
RPi::GPIO.reset
#Set numbering in board pins 
RPi::GPIO.set_numbering :board
#Set the pin direction
RPi::GPIO.setup 11, :as => :output

#New pwm object PIN, FREQUENCY
pwm = RPi::GPIO::PWM.new(11, 50)
#change angle
pwm.start 0
pwm.duty_cycle = 0.0001

loop do
    print "Angle in %: "
    setl = gets.chomp
    if setl.downcase == "x"
        break
	RPi::GPIO.reset
    else
	val = setl.to_f
        pwm.duty_cycle = val
    end
end

