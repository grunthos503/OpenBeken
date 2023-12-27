// Autoexec.bat for Minoston MT10W countdown timer switch

// All controls are through TuyaMCU
startDriver TuyaMCU
tuyaMcu_defWiFiState 4 

// Main power relay
SetChannelLabel 1 Switch
setChannelType 1 toggle
linkTuyaMCUOutputToChannel 1 bool 1

// Countdown timer -- read/writea
SetChannelLabel 2 Countdown
setChannelType 2 TextField
linkTuyaMCUOutputToChannel 7 val 2


// 6 physicial buttons.  Uncomment these if you want to change the timer length
//SetChannelLabel 3 Button_1 // (5 min)
//setChannelType 3 TimerSeconds
//linkTuyaMCUOutputToChannel 101 val 3

//SetChannelLabel 4 Button_2 // (10 min)
//setChannelType 4 TimerSeconds
//linkTuyaMCUOutputToChannel 102 val 4

//SetChannelLabel 5 Button_3 // (30 min)
//setChannelType 5 TimerSeconds
//linkTuyaMCUOutputToChannel 103 val 5

//SetChannelLabel 6 Button_4 // (60 min)
//setChannelType 6 TimerSeconds
//linkTuyaMCUOutputToChannel 104 val 6

//SetChannelLabel 7 Button_5 // (2 hour)
//setChannelType 7 TimerSeconds
//linkTuyaMCUOutputToChannel 105 val 7

//SetChannelLabel 8 Button_6 // (4 hour)
//setChannelType 8 TimerSeconds
//linkTuyaMCUOutputToChannel 106 val 8


// LED indicator brightness
tuyaMcu_setDimmerRange 0 100
SetChannelLabel 9 Led_Brightness
setChannelType 9 dimmer
linkTuyaMCUOutputToChannel 107 val 9

// Which button was last pressed, 1 to 6
SetChannelLabel 10 Active_Key
setChannelType 10 TextField
linkTuyaMCUOutputToChannel 108 val 10

// Unclear what this does
//SetChannelLabel 11 Power_Status
//setChannelType 11 TextField
//linkTuyaMCUOutputToChannel 109 enum 11

// LED status countdown indicator
//  0 = on
//  1 = blink
SetChannelLabel 12 Countdown_Status
setChannelType 12 TextField
linkTuyaMCUOutputToChannel 110 enum 12

// Force relay on, with no timer countdown
//SetChannelLabel 13 Always_On
//setChannelType 13 toggle
//linkTuyaMCUOutputToChannel 111 bool 13

// MQTT config for HomeAssistant
flags 2
flags 10
flags 21
flags 45
