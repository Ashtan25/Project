import UIKit
/*:
 ### Presented By: Ashish Singh
 ## Assignment NO.7
 
 # Task 3.
 **Diff bet Frame and bound, Clip to bound and mask to bound, Strong and Weak Property.**
 
 ### Frame:
 **A view's location and size using the parent view's coordinate system**
 **Important for: placing the view in the parent**
 
 
 ### Bounds:
 **A view's location and size using its own coordinate system.**
 **Important for: placing the view's content or subviews within itself**

 ====================================================================================
 ### Mask To Bound:

 **Any sublayers of the layer that extend outside its boundaries will be clipped to those boundaries. Think of the layer, in that case, as a window onto its sublayers; anything outside the edges of the window will not be visible. When masksToBounds is NO, no clipping occurs.**
 
 **When the value of this property is true, Core Animation creates an implicit clipping mask that matches the bounds of the layer and includes any corner radius effects. If a value for the mask property is also specified, the two masks are multiplied to get the final mask value.**
 
 ### Clip To Bound:

 **The use case for clipsToBounds is more for subviews which are partially outside the main view. For example, I have a (circular) subview on the edge of its parent (rectangular) UIView. If you set clipsToBounds to YES, only half the circle/subview will be shown. If set to NO, the whole circle will show up.**
 ### Strong:
 
 **A strong property means that you want to “own” the object. Only when you set the property to nil will the object be  destroyed. Unless one or more objects also have a strong reference to the object. This is the one you will use in most cases.**
 
 1. Creates ownership between property and assigned value.
 2. This is default for object property in ARC so it does not let you worrying about reference count and release the reference automatically.
 3. It is replacement for retain. We use if and only if we need to use as retain.
 
 ### Weak:
 
 **As a direct opposite too strong properties the weak property means you don’t want to have control over the objects lifecycle. The object only lives on while another objects has a strong reference to it. If there are no strong references to the object then it will be destroyed. The most common scenario for a weak property is for subviews of a view controllers view. Because these subviews are already strongly held by the view controllers view.**
 
 1. Creates non-ownerships between property and assigned value.
 2. Strong is used on parent object and weak is used on child object when parent is released then child object reference is also set to nil
 3. It helps to prevents retain cycles.
 4. It doesn’t protect the referenced object when collection by garbage collector.
 5. Weak is essentially assigned, unretain property.
 
 */

