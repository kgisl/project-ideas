
# Video Series for Bitly Challenge

## Why this? 

### Primary reason 
 - [Rawgit](https://rawgit.com/) - going out of service 
and 
- [Query for rawgit](https://app.bitly.com/Bb84dvzET92/bitlinks/?query=rawgit) gives me zero links, when I actually have at least **10+ shortener links**, some of which are already not working.

### Secondary reasons 
  - to use glitch to develop Elm Apps
  - to use Elm app to communicate what JavaScript equivalent app to be developed
     - as per part of the Incremental Hackathon experience 
  - to also present a case study of how to manage App development in Github 

---

## 1st increment
The basic needle in a haystack hack 
http://j.mp/bitlyElmVideo

## 2nd increment
Searching for needle in multiple haystacks 

http://j.mp/bitlyElmVideo2

## 3rd increment
Using a Json server to serve a simple list and testing out http calls and updates 
http://j.mp/bitlyElmVideo3

## 4th increment

Using the same Json server to mimic the data that would be available on bitly's API calls 

http://j.mp/bitlyElmVideo4

## 5th increment 

Using some fancy CSS, we also highlighted all matched links and displayed custom shortener if they exist 

![fancyCSS](https://files.gitter.im/kgashok/advik/5bku/Screenshot-2018-11-07-at-16.58.47.png)

## 6th increment 

Using radio buttons to toggle between Test and Actual data
http://j.mp/bitlyElmVideo6

## 7th increment 

Added the much needed hyperlink for shorteners in the list 

![increment2](http://bit.ly/incrementPic2)

## 8th increment
Used another set of radio buttons to provide viewMode (**ShowAll** or **MatchedOnly**) and searching across all three strings for an URL (title, url and custom shortener)
http://j.mp/bitlyElmVideo8 

## 9th increment

Do the ultimate thing - access the bitly API and get all the 25000+ links and search through them   
  - limit to getting 1000 links or less and then expand to bigger downloads 
  - https://bitly-elm.glitch.me is the latest evolving version of the app


# Notes

- Hacker teams can emulate my incremental pathway to get to the 8th increment version 
- After that, they must use their own creativity and analytical thinking as to how the project can be further evolved 
	- For inspiration, look at both the open and closed issues [here](https://github.com/kgashok/elm-for-bitly/issues)

 - Questions to ask and design: 
	  - how will you handle < 1000 links? 
	  - how will you display / update > 1000 links? 
	  - how will you search when > 25000 links? 
	  - how will you help choose a needle for the user? 




