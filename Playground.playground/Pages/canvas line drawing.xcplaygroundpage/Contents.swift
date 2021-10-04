let preferredWidth = 600
let preferredHeight = 600
/*:
 ## Required code
 
 Lines 28 to 36 are required to make the playground run.
 
 Please do not remove.
 */
import Cocoa
import PlaygroundSupport
import CanvasGraphics

// Create canvas
let canvas = Canvas(width: preferredWidth, height: preferredHeight)

// Create a turtle that will draw upon the canvas
let turtle = Tortoise(drawingUpon: canvas)

// Create a pen to draw on the canvas with
let p = Pen(drawingUpon: canvas)

// Show the canvas in the playground's live view
PlaygroundPage.current.liveView = canvas
/*:
 ## Add your code
 
 Beginning on line 48, write a meaningful comment.
 
 You can remove the code on line 49 and begin writing your own code.
 
 [Documentation](http://russellgordon.ca/CanvasGraphics/Documentation/) is available.

 */



//Where am I what direction am I facing?
print(p.currentPosition())
print(p.currentHeading )

// Draw outline of house
p.goto(dx: 0, dy: 100)
p.addLine(distance: 200)
p.turn(degrees: 90)
p.addLine(distance: 200)
p.turn(degrees: 90)
p.addLine(distance: 400)
p.turn(degrees: 90)
p.addLine(distance: 200)
p.turn(degrees: 90)
p.addLine(distance: 200)

    //draw the right window outline
p.addLine(distance:80)
p.turn(degrees: 90)
p.addLine(distance:120)
p.turn(degrees:-90)
p.addLine(distance: 40)
p.turn(degrees: -90)
p.addLine(distance: 120)
p.turn(degrees: -90)
p.addLine(distance:200)

    //Draw the left window outline
p.turn(degrees: -90)
p.addLine(distance: 120)
p.turn(degrees: 90)
p.addLine(distance:40)
p.turn(degrees: 90)
p.addLine(distance:120)
p.turn(degrees: 90)
p.addLine(distance: 80)
p.turn(degrees: 90)
p.addLine(distance: 130)
p.turn(degrees: -90)
p.addLine(distance: 80)
p.turn(degrees: -90)
p.addLine(distance: 130)
p.turn(degrees: 90)
p.addLine(distance: 160)


    // draw roof
p.goto(dx: 0, dy: 200)
p.addLine(distance:20)
p.turn(degrees: 90)
p.turn(degrees: -90)
p.addLine(distance: 160)
p.turn(degrees: 150)
p.addLine(distance: 415)
p.turn(degrees: 60)
p.addLine(distance:415)
p.turn(degrees:150)
p.addLine(distance: 160)


p.turn(degrees: 180)
p.turn(degrees: 90)
p.addLine(distance:200)
p.turn(degrees: 90)
p.addLine(distance: 100)
p.turn(degrees: 90)
p.addLine(distance: 120)
p.turn(degrees: 90)
p.addLine(distance:23)
p.turn(degrees: 90)
p.addLine(distance: 120)


// Where is the pen?
print(p.currentPosition())
// get back to the origin
//  p.goto(dx: 121.80108514108407, dy: -100.00000000000003)

// Where is the pen?
//  print(p.currentPosition())

    // draw middle of right nwindow
//  p.goto(dx: 100, dy: 100)
//  p.drawTo(dx: 0, dy: 120)
//  p.goto(dx: -200, dy: 0)
//  p.addLine(distance:60)
//  p.turn(degrees:90)
//  p.addLine(distance:20)
//  p.turn(degrees: 180)
//  p.addLine(distance:40)
//  p.goto(dx: 220, dy: 0)
//  p.addLine(distance: 20)
//  p.turn(degrees: 180)
//  p.addLine(distance: 40)
//  p.goto(dx: -120, dy: 2)
//  p.addLine(distance: 40)
//  p.turn(degrees: 180)
//  p.addLine(distance: 80)
//  p.goto(dx: -40, dy: 0)
//  p.turn(degrees: 90)
//  p.addLine(distance: 50)

////  Now draw the pine tree
//  p.goto(dx: -280, dy: 0)     // Get to base of trunk
//  p.drawTo(dx: 0, dy: 70)     // Draw trunk
////
//// Draw a branch set
//  p.drawTo(dx: 0, dy: 10)      // A bit more trunk
//  p.drawTo(dx: -20, dy: -10)   // Left branch
//  p.goto(dx: 40, dy: 0)       // Over to end of right branch
//  p.drawTo(dx: -20, dy: 10)    // Right branch
//
//// Draw a branch set
//  p.drawTo(dx: 0, dy: 10)      // A bit more trunk
//  p.drawTo(dx: -20, dy: -10)   // Left branch
//  p.goto(dx: 40, dy: 0)       // Over to end of right branch
//  p.drawTo(dx: -20, dy: 10)    // Right branch
//
//// Draw a branch set
//  p.drawTo(dx: 0, dy: 10)      // A bit more trunk
//  p.drawTo(dx: -20, dy: -10)   // Left branch
//  p.goto(dx: 40, dy: 0)       // Over to end of right branch
//  p.drawTo(dx: -20, dy: 10)    // Right branch
//
//// Draw a branch set
//  p.drawTo(dx: 0, dy: 10)      // A bit more trunk
//  p.drawTo(dx: -20, dy: -10)   // Left branch
//  p.goto(dx: 40, dy: 0)       // Over to end of right branch
//  p.drawTo(dx: -20, dy: 10)    // Right branch
//
//// Draw a branch set
//  p.drawTo(dx: 0, dy: 10)      // A bit more trunk
//  p.drawTo(dx: -20, dy: -10)   // Left branch
//  p.goto(dx: 40, dy: 0)       // Over to end of right branch
//  p.drawTo(dx: -20, dy: 10)    // Right branch
//
//// Draw a branch set
//  p.drawTo(dx: 0, dy: 10)      // A bit more trunk
//  p.drawTo(dx: -20, dy: -10)   // Left branch
//  p.goto(dx: 40, dy: 0)       // Over to end of right branch
//  p.drawTo(dx: -20, dy: 10)    // Right branch
////
//// Draw a branch set
//  p.drawTo(dx: 0, dy: 10)      // A bit more trunk
//  p.drawTo(dx: -20, dy: -10)   // Left branch
//  p.goto(dx: 40, dy: 0)       // Over to end of right branch
//  p.drawTo(dx: -20, dy: 10)    // Right branch
//
//// Draw a branch set
//  p.drawTo(dx: 0, dy: 10)      // A bit more trunk
//  p.drawTo(dx: -20, dy: -10)   // Left branch
//  p.goto(dx: 40, dy: 0)       // Over to end of right branch
//  p.drawTo(dx: -20, dy: 10)    // Right branch
//
//
////



/*:
 ## Show the Live View
 Don't see any results?
 
 Remember to show the Live View (1 then 2):
 
 ![timeline](timeline.png "Timeline")

 ## Use source control
 To keep your work organized, receive feedback, and earn a high grade in this course, regular use of source control is a must.
 
 Please commit and push your work often.
 
 ![source_control](source-control.png "Source Control")
 */
