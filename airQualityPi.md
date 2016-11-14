# Air Quality Sensors and reporting through Twitter

Related projects: [Amazon's Alexa on Raspberry Pi] 

Talk on IOT by Saravanan Theckyam (Tata Elexsi) -http://j.mp/hobbiesToRealWorld
Using RaspberryPi to control fan for temperature - http://j.mp/raspberryFanController


### Why Air Pollution? 

At around the 42nd minute: 200,000 Americans die due to air pollution every year; 500,000 people in India and 50 lakh people around the world. WTH? http://mashable.com/2016/10/04/dicaprio-mars-musk/?utm_cid=mash-com-fb-main-link#wwpKinxJF5qk

http://m.thehindu.com/sci-tech/energy-and-environment/india-accounts-for-75-of-air-pollution-casualties-who/article9154552.ece - 600,000 in India and 800,000 in China 

http://timesofindia.indiatimes.com/india/94-cities-havent-met-air-quality-standards-in-5-years/articleshow/55270013.cms - 94 cities haven't met air quality standards in 5 years

http://www.nytimes.com/2016/10/31/world/asia/unicef-children-toxic-air.html - About 300 million children in the world breathe highly toxic air, the United Nations Children’s Fund said in a report on Monday that used satellite imagery to illustrate the magnitude of the problem. The vast majority of these children, about 220 million, live in South Asia, in places where air pollution is at least six times the level that the World Health Organization considers safe, Unicef said.

![childMask](/doc/childMaskDelhi.jpg)
![300million](/doc/300millionChildren.jpeg)


### Mobile Air Quality 
ABSTRACT: In this work we present CitiSense, a new kind of "citizen infrastructure" for the monitoring of pollution and environmental conditions that users are exposed to. By utilizing mobile phones and affordable, small sensors placed in the environment and carried by users, data about pollutants such as ozone and carbon monoxide is collected and used to provide real-time feedback to users and enable them to make healthy changes in their behavior. Results can be reported to a back-end server for further processing and learning, allowing other stakeholders to better understand how diseases such as asthma develop and to help coordinate efforts within a user's community to improve conditions. What differentiates CitiSense from previous projects of this sort is the design of a complete system that addresses issues of mobile power management, data security, privacy, inference with commodity sensors, and integration into a highly extensible and adaptive infrastructure comprising of Open Rich Services (ORS). We discuss the design goals of the CitiSense project, our progress towards the vision of ubiquitous environmental sensing in San Diego, and preliminary results for energy management policies for sensor nodes and mobile phones.

https://github.com/kgisl/project-ideas/blob/master/ias/WH2012_Camera_Ready.pdf
https://github.com/kgisl/project-ideas/blob/master/ias/MicrosoftSensorNode.pdf



### Pi crosses 10 million 
http://www.techtimes.com/articles/176812/20160908/the-tech-world-loves-raspberry-pi-10-million-cheap-computers-sold-and-its-just-getting-started.htm

### Omega 2 or Pi Zero? 

To start things off, the Omega2 offers a 580 MHz CPU, 16 MB worth of storage and 64 MB of RAM. Meanwhile, the Pi Zero triumphs over it with a 1 GHz CPU plus 512 MB of RAM.
However, Onion also offers a more powerful version called the Omega2 Plus, and it sports two times the amount of storage and memory and a microSD slot to boot.

Between the two, only the Omega2 features built-in Wi-Fi, and to get something like that on the Pi Zero requires an add-on.

See more at: http://www.techtimes.com/articles/173849/20160816/onion-omega2-vs-raspberry-pi-zero-which-tiny-computer-should-you-buy.htm#sthash.ug6UjPbF.dpuf

### Misc 
https://fossbytes.com/step-by-step-guide-to-build-a-weather-bot-in-slack/

### Use Scale to get temperature from Raspberry Pi
https://dzone.com/articles/scala-iot-first-basic-iot-application-using-scala-2?edition=222182&utm_source=Spotlight&utm_medium=email&utm_campaign=iot%202016-10-11

# Smart City Hackathon Effort
Sudhar et al. presented this as their project in the SCH effort in Aug 2016. 
Their presentation is available at http://j.mp/airPiKG


### Setting up a Raspberry Pi to provide data on the web 
http://antrikshy.com/blog/make-raspberry-pi-accessible-over-web-arch-linux

###Other Information
http://indiatoday.intoday.in/education/story/chennai-air-quality-index-on-twitter/1/649648.html

This can be installed using the USD 5.00 Raspberry Pis in many places. 
And we interface with Twitter to show Coimbatore air quality. 
A worthy project. 

### Online hands-on Learning Material 
https://www.udemy.com/hands-on-internet-of-things-raspberry-pi/learn/v4/t/lecture/4701948


###Project Leads 
 - Team_A - Sudharsan R (KITE, 2017) and Advik G (PSG, 2020)
 - Team_B - Who else wants to do this? 

### Timelines: 
- When do you hope to finish this project? 

### Getting Started
Building a Air Quality sensor using Raspberry PI, and we call it AirPi. The following link provided us step-by-step approach to build the AirPi [link to AirPi page](http://airpi.es/participate.php).

> Components Required

|      SNO      |  Components   |
| ------------- | ------------- |
|       1       | Raspberry PI      |
|       2       | Screen     |
|       3       | Breadboards - [link](http://oomlout.co.uk/products/breadboard-400-point) |
|       4       | Wires - [link](http://oomlout.co.uk/products/jumper-wires-70-piece) |
|       5       | F to F jumper Leads - [link](http://oomlout.co.uk/products/premium-female-to-female-jumper-wires-x30) |
|       6       | Resistors  |
|       7       | ADC - Datasheet - [link](http://ww1.microchip.com/downloads/en/DeviceDoc/21295d.pdf) |
|       8       | LEDs - [link](http://www.oomlout.co.uk/extra-pieces-leds-c-70_72.html) |
|       9       | DHT22 - Humidity & Temperature - [link](https://proto-pic.co.uk/humidity-and-temperature-sensor-dht22/) |
|      10       | UVI-01 - Ultra Violet Radiation - Requires ADC - [link](http://www.ebay.co.uk/itm/180846474255) |
|      11       | LDR - Light Level - Requires ADC |
|      12       | TGS 2600 - General Air Quality - Requires ADC - [link](http://uk.rs-online.com/web/p/gas-detection/5389960/) |
|      13       | MICS-2710 - NO2 Concentration - Requires ADC - [link](https://www.cdiweb.com/ProductDetail/MICS2710-SGX-Sensortech-Limited-formerly-e2v/333415/) |
|      14       | MICS-5525 - CO Concentration - Requires ADC - [link](https://www.cdiweb.com/ProductDetail/MICS5525-SGX-Sensortech-Limited-formerly-e2v/363013/) |

> AirPi [Circuit Design](https://123d.circuits.io/circuits/18876) via online AutoDesk 

### Links
[Amazon's Alexa on Raspberry Pi]: https://github.com/kgisl/project-ideas/blob/master/alexRaspberryPi.md

