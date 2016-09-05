#!/bin/bash
http://elinux.org/CI20_GPIO_LED_Blink_Tutorial#Blink_an_LED_on_a_GPIO_pin_from_CI20.27s_command_shell

BUZZER=51
LED0=66
LED1=67
LED2=68
LED3=69
BUZZER_DIR=/sys/class/gpio/gpio$BUZZER
LED0_DIR=/sys/class/gpio/gpio$LED0
LED1_DIR=/sys/class/gpio/gpio$LED1
LED2_DIR=/sys/class/gpio/gpio$LED2
LED3_DIR=/sys/class/gpio/gpio$LED3


echo "Configuring GPIO $BUZZER"
#check if the gpio is already exported
if [ ! -e "$BUZZER_DIR" ]
then
	echo "Exporting BUZZER"
	echo $BUZZER > /sys/class/gpio/export
else
	echo "BUZZER already exported"
fi

echo "Configuring GPIO $LED0"
#check if the gpio is already exported
if [ ! -e "$LED0_DIR" ]
then
	echo "Exporting LED0"
	echo $LED0 > /sys/class/gpio/export
else
	echo "LED0 already exported"
fi

echo "Configuring GPIO $LED1"
#check if the gpio is already exported
if [ ! -e "$LED1_DIR" ]
then
	echo "Exporting LED1"
	echo $LED1 > /sys/class/gpio/export
else
	echo "LED1 already exported"


echo "Configuring GPIO $LED2"
#check if the gpio is already exported
if [ ! -e "$LED2_DIR" ]
then
	echo "Exporting LED2"
	echo $LED2 > /sys/class/gpio/export
else
	echo "LED2 already exported"


echo "Configuring GPIO $LED3"
#check if the gpio is already exported
if [ ! -e "$LED3_DIR" ]
then
	echo "Exporting LED3"
	echo $LED3 > /sys/class/gpio/export
else
	echo "LED3 already exported"






echo "Current direction: `cat $BUZZER_DIR/direction`"
echo "Set BUZZER as output"
echo out > $BUZZER_DIR/direction
echo "New BUZZER direction: `cat $BUZZER_DIR/direction`"
echo "Current value: `cat $BUZZER_DIR/value`"
echo "Set value as high"
echo 1 > $BUZZER_DIR/value
echo "New value: `cat $BUZZER_DIR/value`"


echo "Current direction: `cat $LED0_DIR/direction`"
echo "Set LED0 as output"
echo out > $LED0_DIR/direction
echo "New LED0 direction: `cat $LED0_DIR/direction`"
echo "Current value: `cat $LED0_DIR/value`"
echo "Set value as high"
echo 1 > $LED0_DIR/value
echo "New value: `cat $LED0_DIR/value`"

#Endless loop
echo "Start blinking, 1 sec on plus 1 sec off, press CTRL+C to end"
while ( true );
	do echo 1 > $LED0_DIR/value;
	cat $LED0_DIR/value;
	sleep 1;
	echo 0 > $LED0_DIR/value;
	cat $LED0_DIR/value;
	sleep 1;
done;




echo "Current direction: `cat $LED1_DIR/direction`"
echo "Set LED1 as output"
echo out > $LED1_DIR/direction
echo "New LED1 direction: `cat $LED1_DIR/direction`"
echo "Current value: `cat $LED1_DIR/value`"
echo "Set value as high"
echo 1 > $LED1_DIR/value
echo "New value: `cat $LED1_DIR/value`"

#Endless loop
echo "Start blinking, 1 sec on plus 1 sec off, press CTRL+C to end"
while ( true );
	do echo 1 > $LED1_DIR/value;
	cat $LED1_DIR/value;
	sleep 2;
	echo 0 > $LED1_DIR/value;
	cat $LED1_DIR/value;
	sleep 2;
done;


echo "Current direction: `cat $LED2_DIR/direction`"
echo "Set LED2 as output"
echo out > $LED2_DIR/direction
echo "New LED2 direction: `cat $LED2_DIR/direction`"
echo "Current value: `cat $LED1_DIR/value`"
echo "Set value as high"
echo 1 > $LED2_DIR/value
echo "New value: `cat $LED2_DIR/value`"

#Endless loop
echo "Start blinking, 1 sec on plus 1 sec off, press CTRL+C to end"
while ( true );
	do echo 1 > $LED2_DIR/value;
	cat $LED2_DIR/value;
	sleep 3;
	echo 0 > $LED2_DIR/value;
	cat $LED2_DIR/value;
	sleep 3;
done;


echo "Current direction: `cat $LED3_DIR/direction`"
echo "Set LED3 as output"
echo out > $LED3_DIR/direction
echo "New LED3 direction: `cat $LED3_DIR/direction`"
echo "Current value: `cat $LED3_DIR/value`"
echo "Set value as high"
echo 1 > $LED3_DIR/value
echo "New value: `cat $LED3_DIR/value`"

#Endless loop
echo "Start blinking, 1 sec on plus 1 sec off, press CTRL+C to end"
while ( true );
	do echo 1 > $LED3_DIR/value;
	cat $LED3_DIR/value;
	sleep 4;
	echo 0 > $LED3_DIR/value;
	cat $LED3_DIR/value;
	sleep 4;
done;