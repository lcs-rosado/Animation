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
import AppKit

// Create canvas
let canvas = Canvas(width: preferredWidth, height: preferredHeight)

// Create a turtle that will draw upon the canvas
let t = Tortoise(drawingUpon: canvas)

// Show the canvas in the playground's live view
PlaygroundPage.current.liveView = canvas
/*:
 ## Add your code
 
 Beginning on line 48, write a meaningful comment.
 
 You can remove the code on line 49 and begin writing your own code.
 
 [Documentation](http://russellgordon.ca/CanvasGraphics/Documentation/) is available.

 */

canvas.translate(to: Point(x: 100, y: 100))

// show grid

canvas.drawAxes(withScale: true, by: 20, color: .black)


// Constants
let scale = 10
let diagonal = Int(sqrt(2.0)*Double(scale))



//get pen in position
t.penUp()
t.left(by: 90)
t.forward(steps: 1*scale)
t.right(by: 90)
t.penDown()



//Functions

func drawArrow()  {
    t.penDown()
    t.forward(steps: 3 * scale)
    t.right(by: 90)
    t.forward(steps: 1 * scale)
    t.left(by: 90)
    t.left(by: 45)
    t.forward(steps: diagonal * 2)
    t.left(by: 90)
    t.forward(steps: diagonal * 2)
    t.left(by: 45)
    t.left(by: 90)
    t.forward(steps: 1 * scale)
    t.right(by: 90)
    t.forward(steps: 3 * scale)
    t.left(by: 90)
    t.forward(steps: 2 * scale)
    t.left(by: 90)

}


let columnCount = 10
let rowCount = 12
canvas.highPerformance = true

//Draw many rows of arrows
for _ in 1...rowCount {
    
    // Draw one row of arrows
    for _ in 1...columnCount {
        //Start Drawing
    //    t.drawSelf()
        drawArrow()
    //    t.drawSelf()

        // get into position to draw the next arrow
        t.penUp()
        t.forward(steps: 5 * scale)
        t.penDown()

        
    }

    //Get pen into drawing position for the next row
    t.penUp()
    t.left(by: 180)
    t.forward(steps: 5 * columnCount * scale)
    t.right(by: 90)
    t.forward(steps: 4 * scale)
    t.right(by: 90)
    t.penDown()


    
}


canvas.highPerformance = false
