#Help user find degF or degC based on their Conversion Selection. Use
#Case Statement and ensure that the inputs are within the Freezing Point (
#0 °C / 32 °F ) and the Boiling Point of Water ( 100 °C / 212 °F )
#a. degF = (degC * 9/5) + 32
#b. degC = (degF – 32) * 5/9
#***************************************************************************
#!/bin/bash -x
function degF_to_degC(){
if [[ ($1 -ge 32 && $1 -le 212) ]]
then
degC=$(echo "$1" | awk '{ print " ", ($1 - 32) * 5 / 9}')
echo "$1 = $degC celsius"
else
echo "temperature entered is beyond the limits!"
fi
}
function degC_to_degF(){
if [[ ($1 -ge 0 && $1 -le 100) ]]
then
degF=$(echo "$1" | awk '{ print " ", ($1 * 9.0 / 5) + 32}')
echo "$1 = $degF fahrenheit"
else
echo "temperature entered is beyond the limits!"
fi
}
read -p "Enter the temperature: " T
read -p "Select the option: 1) degF to degC 2) degC to degF " option
degF_to_degC=1
degC_to_degF=2
case "$option" in
$degF_to_degC)
degF_to_degC $T
;;
$degC_to_degF)
degC_to_degF $T
;;
*)
echo "invalid option!"
esac
