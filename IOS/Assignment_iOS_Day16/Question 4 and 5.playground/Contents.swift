/*:
    # Question 4
    ## What is push payload size in iOS 12 ?
    ### The maximum size of the payload depends on the notification you are sending:
 
    1. For regular remote notifications, the maximum size is 4KB (4096 bytes)
    2. For Voice over Internet Protocol (VoIP) notifications, the maximum size is 5KB (5120 bytes)
 
    ### If we are using the legacy APNs binary interface to send notifications instead of an HTTP/2 request, the maximum payload size is 2KB (2048 bytes)
    ### APNs refuses notifications whose payload exceeds the maximum allowed size.
 
 
 
    # Question 5
    ## What is push notification?How it works?
    ### Push notices are straightforward messages conveyed from applications installed on a device.
    ### Push notifications are broadly utilized on every single cell phone to share updated information or events.
    ### On iOS, Apple includes a Notification Center, which is arranged in sequential order, and clients get to the Notification Center by swiping down from the top-point of the screen. Android gadgets indicate new messages on the lock screen.
    ### iOS gives clients a chance to alter push notification web service at an individual application level. Clients can turn sounds on or off, and pick the style that iOS uses to demonstrate a notification.
    ### To send Push Notifications from your application, you should set up a server first. This server sends a notification to Apple’s Push Notification Service (APNS) or GCM (Google Cloud Messaging), which at that point sends the notification to the your device.
 
   ### When a client opens your application, you have a ‘code set-up’ to register their phone/device/gadget on your server. It is a best practice to re-register with the server each time the application is opened to keep any issues when the client gets another device and reestablishes it from a back-up of their old one.
 
*/

