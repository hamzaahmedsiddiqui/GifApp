# GifApp

Basic application for searching Gif


Technical Info:
IDE: Xcode ( Version 11.3.1)
Development Language: Swift verion 5.0 
OS : ios 13.0
FrameWork Used : Kingfisher (for gif and image handling)
Architecture : MVVM 
API : Giphy (used for getting GIF)


Application OverView:

Functionality: 
First screen showing random animated GIF with url, title and age restriction.There is a search bar above on clicking search bar it take two other view which contain gif’s search results (not animated) and ability to select one of the gif. Search results will update result by every 2 typed characters(you can say update on even count of search text). There is a Cancel option which redirect user to first screen. When you tap any GIf from search result it take to the third view, which looks same as first screen but with title on top and back button to previous view. 


GroupFolder descriptions:
StoryBoard : contains Main storyBoard and Lunch Screen 
Model : contain related models which are used in modeling and handling data coming from servers (random gif api used and search gif api used ). Use model classes to decouple data 
View: contain view class of collection cell 
ViewModel : Contain ViewModel used to retrieves the necessary data from the DataModel.
Controller: contains all the UiViewController classes connected to uiviewcontroller in stoaryboard , playing role as UI based functions 
Utilities : contain classes used in differnet utilities functions
Services: contain class which encapsulates our network request call to the server to get data 




