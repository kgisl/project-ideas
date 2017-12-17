Redis on the Raspberry Pi: adventures in unaligned lands 

Well, I love to think that also Redis is a platform that programmers like 
to use when to hack, experiment, build new things. Moreover devices that can be used 
for embedded / IoT applications, often have the problem of temporarily or permanently 
storing data, for example received by sensors, on the device, to perform on-device computations 
or to send them to remote servers. Redis is adding a “Stream” data type that is specifically suited
for streams of data and time series storage, at this point the specification is near complete and 
work to implement it will start in the next weeks. Redis existing data structures, and the new 
streams, together with the small memory footprint, the decent performances it can provide
even while running on small hardware (and resulting low energy usage), looked like a good match
for Raspberry Pi potential applications, and in general for small ARM devices.

The missing piece was the obvious one: to run well on the Pi.
http://antirez.com/news/111

