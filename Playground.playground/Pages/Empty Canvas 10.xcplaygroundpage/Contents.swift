//: [Previous](@previous) / [Next](@next)
/*:
## Canvas size
 
 Set the size of your desired canvas by adjusting the constants on lines 19 and 20.
 */
let preferredWidth = 800
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




canvas.drawAxes(withScale: true, by: 20, color: .black)


canvas.highPerformance = true

// Constants
let scale = 5
let diagonal = Int(sqrt(2.0)*Double(scale))

//Move to start position
t.penDown()
t.left(by: 90)
t.forward(steps: 1*scale)
t.right(by: 90)
t.penUp()

// Function to draw my pattern
func drawsquare () {
  

    //Draw first square
    //t.drawSelf()

    t.penDown()
    t.forward(steps: 5*scale)
    t.left(by: 90)
    t.forward(steps: 5*scale)
    t.left(by: 90)
    t.forward(steps: 5*scale)
    t.left(by: 90)
    t.forward(steps: 5*scale)

    //get pen back into position

    t.penUp()
    t.left(by: 90)
    t.forward(steps: 5*scale)
    t.penDown()

    //Draw second Square
    t.forward(steps: 5*scale)
    t.left(by: 90)
    t.forward(steps: 5*scale)
    t.left(by: 90)
    t.forward(steps: 5*scale)
    t.left(by: 90)
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
    t.left(by: 90)
    t.forward(steps: 2*scale)
    t.left(by: 90)
    t.forward(steps: 2*scale)
    t.left(by: 90)
    t.forward(steps: 2*scale)
    t.penUp()

    
 }

t.currentPosition()
t.drawSelf()


// Make a function moving the pattern up
func movepatternUp() {
    
    t.penUp()
    t.backward(steps: scale*5*18)
    t.left(by: 90)
    t.forward(steps: scale*5)
    t.right(by: 90)
    t.penDown()
//    t.drawSelf()
    
    
}


// Loop function to make multiple rows of it
for _ in 1 ... 15 {
    // Gets one row
    for _ in 1 ... 9 {
        
        drawsquare()
//        t.drawSelf()
        t.penUp()
        t.backward(steps: scale*5)
        t.left(by: 90)
        t.forward(steps: scale*3)
        t.left(by: 90)
        t.penUp()
        
        
    }

//    t.drawSelf()
    t.currentPosition()
    movepatternUp()
//    t.drawSelf()
    t.currentPosition()
        
}
    
canvas.highPerformance = false
    













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
