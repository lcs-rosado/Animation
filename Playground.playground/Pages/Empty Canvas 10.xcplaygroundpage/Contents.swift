//: [Previous](@previous) / [Next](@next)
/*:
## Canvas size
 
 Set the size of your desired canvas by adjusting the constants on lines 19 and 20.
 */
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

// move origin in a bit
canvas.translate(to: Point(x: 100, y: 100))

// Create a turtle that will draw upon the canvas
let t = Tortoise(drawingUpon: canvas)


// Show the canvas in the playground's live view
PlaygroundPage.current.liveView = canvas




canvas.drawAxes(withScale: true, by: 10, color: .black)


// Constants
let scale = 20
let diagonal = Int(sqrt(2.0)*Double(scale))



//get pen in position
t.penDown()
t.left(by: 90)
t.forward(steps: 1*scale)
t.right(by: 90)
t.penUp()

//DRaw first square
t.drawSelf()

t.penDown()
t.forward(steps: 5*scale)
t.right(by: -90)
t.forward(steps: 5*scale)
t.right(by: -90)
t.forward(steps: 5*scale)
t.right(by: -90)
t.forward(steps: 5*scale)

//get pen back into position

t.penUp()
t.right(by: -90)
t.forward(steps: 5*scale)
t.penDown()

//Draw second Square
t.forward(steps: 5*scale)
t.right(by: -90)
t.forward(steps: 5*scale)
t.right(by: -90)
t.forward(steps: 5*scale)
t.right(by: -90)
t.forward(steps: 5*scale)


//Get the pen back into position
t.penUp()
t.right(by: 90)
t.backward(steps: 5*scale)
t.forward(steps: 10*scale)
t.right(by: 90)


//First inner square

t.penDown()
t.forward(steps: 2*scale)
t.right(by: 90)
t.forward(steps: 2*scale)
t.right(by: -90)
t.forward(steps: 2*scale)
t.right(by: -90)
t.forward(steps: 2*scale)
t.penUp()

//Second inner square

t.right(by: 180)
t.forward(steps: 5*scale)
t.right(by: 90)
t.forward(steps: 3*scale)
t.penDown()
t.right(by: -90)
t.forward(steps: 2*scale)
t.right(by: -90)
t.forward(steps: 2*scale)
t.right(by: -90)
t.forward(steps: 2*scale)
t.penUp()

// Get pen into position
t.right(by: 180)
t.backward(steps: 5*scale)
t.right(by: 90)
t.forward(steps: 3*scale)
t.right(by: 260)





t.currentPosition()

// get turtle back to where it started
    


t.drawSelf()












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
