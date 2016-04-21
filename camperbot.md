## GOAL:  
- We need to create a Guinness Record. We need a counter to count number of challenges completed
in a specific period of time. 
- For this we need a counter of participants and their respective challenge completions.

# Special CamperBot
- Issue already flagged at https://github.com/FreeCodeCamp/camperbot/issues/75
- Along the lines of a https://statsbot.co/bots/8651 Statsbot for Slack


### MOM (Apr 20 2016)

1. CamperBot - Fundamental requirement is to implement Command including Count, Yesterday's Count, Today's Count, Diff betweem days.

### Enhanced Requirements
#The main goal of this challenge to create customized CamperBot with following commands,
1.	Count: It should return the overall count of the problems solved in FCC by  a specific gitter chat room members
a.	Example:  count @kgisl/campsite -> It should return 1500 problems (Total problems solved by all the members in kgisl/campsite)
2.	Yesterday’s Count: It should return yesterday’s count of the problems solved in FCC by  a specific  gitter chat room members
a.	Example: Yesterday’s count @kgisl/campsite – It should return 1000 problems
3.	Today’s Count It should return today’s  count of the problems solved in FCC by  a specific  gitter chat room members
a.	Example : Today’s count @kgisl/campsite - It should return 500 problems
4.	Diff between two or more days: It should return the difference between two or more days (days can be specified by the user).
a.	Example: Diff @kgisl/campsite  -> bot should asks for dates - > 20-04-2016 21-04-2016 -> It should return 500
b.	Assume count for 20-04-2016 is 1000 and 21-04-2016 count is 1500 : 1500 – 1000 -> 500
5.	Max: It should return the name of the member who contributed maximum problems in FCC.
a.	Max @kgisl/campsite -> 245 | @parisudhaandireyaa | http://www.freecodecamp.com/parisudhaandireyaa
6.	Min: It should return the name of the member who contributed minimum problems in FCC.
a.	Min @kgisl/campsite -> 10 | @xyz | http://www.freecodecamp.com/xyz
7.	About @username can be modified to accept two or more members.
a.	About @kgashok @ddrdushy  -> it should give the following result
i.	155 | @kgashok | http://www.freecodecamp.com/kgashok
ii.	245 | @parisudhaandireyaa | http://www.freecodecamp.com/parisudhaandireyaa	
