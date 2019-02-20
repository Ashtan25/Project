/*:
 
 **Submitted By Ashish Singh**
  # Assignment
 ## Question 1
 ### Explain What is XCode
 
 **Xcode is an integrated development environment (IDE) for macOS containing a suite of software development tools developed by Apple for developing software for macOS, iOS, watchOS, and tvOS. First released in 2003, the latest stable release is version 10.1 and is available via the Mac App Store free of charge for macOS High Sierra and macOS Mojave users.**
 
 **Xcode supports source code for the programming languages C, C++, Objective-C, Objective-C++, Java, AppleScript, Python, Ruby, ResEdit (Rez), and Swift, with a variety of programming models, including but not limited to Cocoa, Carbon, and Java. Third parties have added support for GNU Pascal,Free Pascal,Ada,C#,Perl and D.**
 
 **Xcode can build fat binary files containing code for multiple architectures with the Mach-O executable format. These are called universal binary files, which allow software to run on both PowerPC and Intel-based (x86) platforms and that can include both 32-bit and 64-bit code for both architectures. Using the iOS SDK, Xcode can also be used to compile and debug applications for iOS that run on ARM architecture processors.**
 
 **Xcode includes the GUI tool Instruments, which runs atop a dynamic tracing framework, DTrace, created by Sun Microsystems and released as part of OpenSolaris.**
 */

/*:
 
 ## Question 2
 ### Explain how you can add frameworks in Xcode project?

 ## Adding Frameworks to Your Xcode Project
 1. **Select the project file from the project navigator on the left side of the project window.**
 2. **Select the target for where you want to add frameworks in the project settings editor.**
 3. **Select the “Build Phases” tab, and click the small triangle next to “Link Binary With Libraries” to view all of the frameworks in your application.**
 4. **To Add frameworks, click the “+” below the list of frameworks.**
 5. **To select multiple frameworks, press and hold the command key while using the mouse to click the desired frameworks.**
*/

/*:
 
 ## Question 3
 ### Explain what is the difference between Xcode, Cocoa and Objective C?
 
 ### COCOA:
 
 **Cocoa is the development framework. It’s actually an umbrella framework with combination of three other Frameworks like Foundation, Appkit, and CoreData which is rooted from older OpenStep. These Cocoa frameworks define all the objects that are easy to use and interact with the operating system as well as the number of functions.**
 
 **Cocoa already a NextStep API and sits on the Top of the Objective-C which was bought by Apple. Anything that starts with NS (NextStep) is a part of Cocoa. It’s an API/library that used to build Mac App. Cocoa is commonly referred to like the combination of the Foundation and AppKit frameworks, while Cocoa Touch is the combination of the Foundation and UIKit frameworks. Cocoa list on top of other collections of frameworks to create the API stacks.**
 
 ### OBJECTIVE-C:
 
 **It’s an Object Oriented language and it is highly dynamic. Mostly all the Objective-C programming done is with one of the NextStep-based APIs. Objective-C is the strict superset of C language it means any language that can be written in C also be used in Objective-C program without being rewritten. In Objective-C, functions are called using messages, a feature inspired by SmallTalk programming language. Every class in Objective-C is based on the NS Object base class, which is said as Foundation class. At the same-time it adds some features on its own that can’t be used in a C program. A functionality that is packed in Cocoa frameworks can be delivered through Object-oriented techniques.**
 
 **In general, Objective-C is the programming language and Cocoa provides the building blocks that you need to write apps for Apple's platforms.**
 
 ### XCODE:
 
 **Xcode is the integrated development environment (IDE)—the application—that developers use to write software for iOS and/or OS X. It includes the editor, the build system (determining what to build to produce the desired target), and quite a few other things.**
 
 **Xcode includes the Clang compiler, which turns code written in Objective-C, C, and a few other languages into executable code. Most error messages come from Clang, and Xcode relies heavily on it for search indexing, syntax highlighting, and name completion of Objective-C code.**
 
 */

/*:
 
 ## Question 3
 ### What is the short cut to open the “Code Snippet Library” in Xcode?
 
**(CMD+OPT+Cntrl+2) is the short-cut to open the “Code Snippet Library” in Xcode.**
 
 
 */
/*:
 ## Question 4
 ### Mention what are the build phases available in Xcode?
 
 **There are three build phases in Xcode that is available by default:**
 1. **Compile Sources**
 2. **Link binary with libraries**
 3. **Copy bundle resources**
 
 */

/*:
 ## Question 5
 ### Explain how app delegate is declared by Xcode project templates?
 
 **App delegate is defined as a sub-class of UIResponder by Xcode project templates.**
*/

/*:
 ## Question 6
 ### Explain how you define variables in Swift language?
 
 ### Declaring Constants and Variables
 **Constants and variables must be declared before they’re used. You declare constants with the let keyword and variables with the var keyword. Here’s an example of how constants and variables can be used to track the number of login attempts a user has made:**
 
 **let maximumNumberOfLoginAttempts = 10**
 
 **var currentLoginAttempt = 0**
 
 **This code can be read as:**
 
 **“Declare a new constant called maximumNumberOfLoginAttempts, and give it a value of 10. Then, declare a new variable called currentLoginAttempt, and give it an initial value of 0.”**
 
 **In this example, the maximum number of allowed login attempts is declared as a constant, because the maximum value never changes. The current login attempt counter is declared as a variable, because this value must be incremented after each failed login attempt.**
 
 **You can declare multiple constants or multiple variables on a single line, separated by commas:**
 
 **var x = 0.0, y = 0.0, z = 0.0**

*/

/*:
 ## Question 7
 ### What is interface builder?
 
 **Interface Builder is a software development application for Apple's macOS operating system. It is part of Xcode (formerly Project Builder), the Apple Developer developer's toolset. Interface Builder allows Cocoa and Carbon developers to create interfaces for applications using a graphical user interface. The resulting interface is stored as a .nib file, short for NeXT Interface Builder, or more recently, as a .xib file.**
 
 **Interface Builder is descended from the NeXTSTEP development software of the same name. A version of Interface Builder is also used in the development of OpenStep software, and a very similar tool called Gorm exists for GNUstep. On March 27, 2008, a specialized iPhone version of Interface Builder allowing interface construction for iPhone applications was released with the iPhone SDK Beta 2.**
 
 **Interface Builder was intentionally developed as a separate application, to allow interaction designers to design interfaces without having to use a code-oriented IDE, but as of Xcode 4, Apple has integrated its functionality directly into Xcode.**
*/
