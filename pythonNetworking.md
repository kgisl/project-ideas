## Fast Python networking 

https://magic.io/blog/uvloop-blazing-fast-python-networking/

It is safe to conclude that, with uvloop, it is possible to write Python networking code that can push tens of thousands of requests per second per CPU core. On multicore systems a process pool can be used to scale the performance even further.

uvloop and asyncio, combined with the power of async/await in Python 3.5, makes it easier than ever to write high-performance networking code in Python.

Please try uvloop (github) and share your results with us!

### Sanic 

https://github.com/channelcat/sanic/blob/master/README.rst
or a very long time now, node.js has evolved nicely. This was because, right from beginning, it was designed to run smoothly, non blocking, async mode. 

Green threads - instead of pthreads with giant overhead - were the right way for low latency applications.

But now there is libuv module for Python 3. Means: Python still runs single thread with GIL, but libuv C module runs in a multi-threaded, interleaved way to serve tens of thousands of TCP/UDP clients smoothly.
