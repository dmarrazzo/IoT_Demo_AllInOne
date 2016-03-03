#!/bin/bash

export deviceType="temperature"
export deviceID="4711"
export initialValue="30"
export count="1"
export waitTime="1"
export receiverURL="localhost"
export brokerUID="admin"
export brokerPassword="change12_me"

echo "Starting the producer to send messages "
java -DbrokerUID=$brokerUID -DbrokerPassword=$brokerPassword -DreceiverURL=$receiverURL -DdeviceType=$deviceType -DdeviceID=$deviceID -DinitialValue=$initialValue -Dcount=$count -DwaitTime=$waitTime -jar Software_Sensor/target/softwareSensor-jar-with-dependencies.jar
