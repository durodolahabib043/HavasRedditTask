# HavasRedditTask

![51od4s](https://user-images.githubusercontent.com/10080531/111077197-fe9c1e00-84c5-11eb-932d-0183e01b1507.gif)


## App Details
1. This is built programmatically NO STORYBOARD 
2. Animated the tableview to sliding in the cell 

## App Architecture
This app uses the MVVM architecture
1. The View - consist of the HomeController, DetailedViewController and RedditViewCell 
2. ModelView - consist of the HomeViewModel
3. Model - consist of Reddit

## Objective C 
1. This project has a RedditObjectiveCModel class (.h ,.m) 
2. It has a bridge header to communicate between swift and Objective c (HavasRedditTask-Bridging-Header.h)
3. This is used in the HomeController class(line 73) to pass data to DetailedViewController class.



## This task used the below apis 
1. Protocols , Delegates, Extensions and  Custom Views 
2. Promise to make api calls - to eliminate the nested completion handle issues 


## Build tool and Version
  1. Xcode Version 12.3 , Swift 5 
  2. This app was tested with version 12.1 and  14.3 
