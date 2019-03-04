import UIKit
/*:
 ### Presented BY: ASHISH SINGH
 **Question 1**
 ## Explore about Segue and create a short note on its use.
 ### Segue is basically a transition process that aid us to move from one controller to another In iOS development segues use to define transition from one view controller to other view controller in storyboard file.Any clickable or gesture recognisable element can be source of segue and a view controller that we want to display will be the source of segue. so basically segue present a view controller but we can also use a segue to dismiss in case of unwind segue.
 ### We can implement custom segues as well and define our own transitions and behaviour too. All we need to do is to create a UIStoryboardSegue subclass and implement own perform  method where we define the behaviour.
 
**Question 2**
 ## Explore diff between Xib's And ViewController and create a short note on its difference.
 ### Storyboard: Storyboards are introduced in iOS 5. When we use storyboards, our deployment target should be 5.0 or higher. With the help of storyboards we can create all the screens of an application and interconnect the screen under one interface MainStoryboard.storyboard. With storyboards we can use segues for pushing/presenting view controllers, thereby reducing the code needed for pushing/presenting.
 
 ### xib: Xib stands for xml interface builder. Xibs are the older way to perform iOS interface design. With xib any arbitrary/custom view can be designed, which a developer can attach to a view controller as needed. If we apply object oriented approach for our UIs, then it make sense to use xib and break view controller's view down into separate modules.
 
 **Now, Which one is better**
 
 ### Since, xibs are old that doesn't mean they are outdated , deprecated or inferior to storyboards. Both are good in their own way. In some cases it is better to use storyboards and in some cases xibs are preferred.
 
 **Storyboards are preferred when:**
 
1. We are having views with dynamic content, where the layout changes significantly depending on the content.
2. We are having views that are not easily designable in interface builder.
3. We are having view controllers with complicated transitions.
 
 **xibs are preferred when:**
 
1. We want to create reusable view templates.
2. We want to create reusable table cell templates.
3. Creating pop up windows, modal views.
 


 
 */

