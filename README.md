# SoC_2021
## Introduction to App Development

I have taken [Introduction to App Development](https://docs.google.com/document/d/1FuX7SFlU19xeJxwmtU16EpFE8X4g8-S0lwWRR8KKcbk/edit) in SoC 2021, hosted by WnCC, Coding Club of IIT Bombay.

This is the final Submission Repo of this project.

I have done 3 mini-projects (and one more just for fun) and there details are as follows:

### World Clock (Checkpoint 1)

As just started learning, we followed [youtube series](https://www.youtube.com/playlist?list=PL4cUxeGkcC9jLYyp2Aoh6hcWuxFDX6PBJ), and built many tiny apps on the way. At the end of series we made an app to show time of different time zones whose source code is present in [this folder](https://github.com/dhananjayiitb/SoC_2021/tree/main/World%20Clock). We use [this api](http://worldtimeapi.org/) to fetch time data. 

Features: Can show time of 9 different time zones.

Learning: Fetch data from API by http request, maintaining loading while request is being made and many different kinds of widgets.

Important files: [lib](https://github.com/dhananjayiitb/SoC_2021/tree/main/World%20Clock/lib) folder contains major code for this app, you can find [World Time Service](https://github.com/dhananjayiitb/SoC_2021/blob/main/World%20Clock/lib/Services/world_time.dart) which can be used as general source code, and there are some design specific pages in pages which provide layout of the whole app.

### News App (Checkpoint 2)

After a successful learning of basics of App Development, we furnish our understanding and skills by building a news App, with basic idea from [youtube video](https://www.youtube.com/watch?v=aaGcER1uUoE). I gave name "Know It All" to my news App and source can be found in [this folder](https://github.com/dhananjayiitb/SoC_2021/tree/main/Know%20It%20All-%20News%20App). We use [this api](https://newsapi.org/) to fetch news articles.
 
Features: It shows headlines of top world news in many categories including general news, entertainment, sports and many more. User can also read more about that news by clicking on news tile which will lead user to kind of In-APP-Browser.

Learning: Importance of Modular coding, segregation of code files depending on features they provide, how to lead user to In-App-Browser, and how to extract data recieved from API in useful format effectively.

Important files: I think file name is sufficient for telling the purpose of each file in [lib](https://github.com/dhananjayiitb/SoC_2021/tree/main/Know%20It%20All-%20News%20App/lib) folder.

### Notes UI (Self Learning)

During Break, I made this app to learn how to take input from user as Text Fields, which was not the case in previous apps. Source code is in [this folder](https://github.com/dhananjayiitb/SoC_2021/tree/main/Notes%20UI).

This is very basic app with just two pages designed to let user type anything they want. I learnt a lot about TextFormField() widget from this app.

### Poster Generating App (Final Team Submission)

We worked on developing our own project which took certain data from the frontend(our app) and the backend processed this data to give out a processed poster for the user. Creation of Directory, taking up images from user’s phone/camera were other features which were implemented in this project.

It's source code and README can be found in this [Github Repo](https://github.com/dhananjayiitb/AdAI-Team-A).



