//: [Previous](@previous) / [Next](@next)
/*:
## Canvas size
 
 Set the size of your desired canvas by adjusting the constants on lines 19 and 20.
 */
let preferredWidth = 400
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

// Show the canvas in the playground's live view
PlaygroundPage.current.liveView = canvas
/*:
 ## Add your code
 
 Beginning on line 48, write a meaningful comment.
 
 You can remove the code on line 49 and begin writing your own code.
 
 [Documentation](http://russellgordon.ca/CanvasGraphics/Documentation/) is available.

 */

// Gig poster
let lightBlue = Color(hue: 193, saturation: 99, brightness: 86, alpha: 100)
canvas.fillColor = lightBlue
canvas.drawRectangle(at: Point(x: 0, y: 0), width: 400, height: 600)


canvas.drawAxes(withScale: true, by: 50, color: .white)


canvas.borderColor = .white50
canvas.defaultBorderWidth = 5
canvas.drawShapesWithFill = false
canvas.drawShapesWithBorders = true
canvas.drawEllipse(at: Point(x: 200, y: 400), width: 20, height: 20)



canvas.drawEllipse(at: Point(x: 200, y: 400), width: 40, height: 40)
canvas

canvas.drawEllipse(at: Point(x: 200, y: 400), width: 20, height: 20)



canvas.drawEllipse(at: Point(x: 200, y: 400), width: 40, height: 40)


canvas.drawEllipse(at: Point(x: 200, y: 400), width: 60, height: 60)

canvas.drawEllipse(at: Point(x: 200, y: 400), width: 80, height: 80)

canvas.drawEllipse(at: Point(x: 200, y: 400), width: 100, height: 100)

canvas.drawEllipse(at: Point(x: 200, y: 400), width: 120, height: 120)

canvas.drawEllipse(at: Point(x: 200, y: 400), width: 140, height: 140)

canvas.drawEllipse(at: Point(x: 200, y: 400), width: 160, height: 160)

canvas.drawEllipse(at: Point(x: 200, y: 400), width: 180, height: 180)

canvas.drawEllipse(at: Point(x: 200, y: 400), width: 200, height: 200)

canvas.drawEllipse(at: Point(x: 200, y: 400), width: 220, height: 220)

canvas.drawEllipse(at: Point(x: 200, y: 400), width: 240, height: 240)

canvas.drawEllipse(at: Point(x: 200, y: 400), width: 260, height: 260)

canvas.drawEllipse(at: Point(x: 200, y: 400), width: 280, height: 280)

canvas.drawEllipse(at: Point(x: 200, y: 400), width: 300, height: 300)

canvas.drawEllipse(at: Point(x: 200, y: 400), width: 320, height: 320)

canvas.drawEllipse(at: Point(x: 200, y: 400), width: 340, height: 340)

canvas.drawEllipse(at: Point(x: 200, y: 400), width: 360, height: 360)

canvas.drawEllipse(at: Point(x: 200, y: 400), width: 380, height: 380)





                





















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

