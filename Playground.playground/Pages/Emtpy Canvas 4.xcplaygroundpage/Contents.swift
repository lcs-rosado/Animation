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


// Show the canvas in the playground's live view
PlaygroundPage.current.liveView = canvas
/*:
 ## Add your code
 
 Beginning on line 48, write a meaningful comment.
 
 You can remove the code on line 49 and begin writing your own code.
 
 [Documentation](http://russellgordon.ca/CanvasGraphics/Documentation/) is available.

 */


// Translate the origin to the middle of the canvas
canvas.translate(to: Point(x: 300, y: 300))

//draw a grid
canvas.drawAxes(withScale: true, by: 20, color: .black)

//draw the left ear
canvas.drawEllipse(at: Point(x: -70, y: 230), width: 75, height: 75)

//draw the right ear
canvas.drawEllipse(at: Point(x: 70, y: 230), width: 75, height: 75)

//draw the face
canvas.fillColor = .white
canvas.drawEllipse(at: Point(x: 0, y: 130), width: 250, height: 250)

//draw the left eye
canvas.fillColor = .black
canvas.drawEllipse(at: Point(x: -50, y: 170), width: 50, height: 50)

//draw the right eye
canvas.drawEllipse(at: Point(x: 50, y: 170), width: 50, height: 50)

//draw the left pupil
canvas.drawShapesWithBorders = false
canvas.fillColor = .white
canvas.drawEllipse(at: Point(x: -40, y: 160), width: 20, height: 20)
canvas.drawEllipse(at: Point(x: 40, y: 160), width: 20, height: 20)

//draw the nose
canvas.fillColor = .black
canvas.drawEllipse(at: Point(x: 0, y: 120), width: 50, height: 25)

//nose detail
canvas.fillColor = .white
canvas.drawEllipse(at: Point(x: 10, y: 127), width: 20, height: 10)
canvas.drawLine(from: Point(x: 0, y: 120),
                to: Point(x: 0, y: 90))
canvas.drawLine(from: Point(x: 0, y: 90),
                to: Point(x: -20, y: 90))
canvas.drawLine(from: Point(x: 0, y: 90),
                to: Point(x: 20, y: 90))
canvas.drawLine(from: Point(x: -20, y: 90),
                to: Point(x: -20, y: 95))
canvas.drawLine(from: Point(x: 20, y: 90), to: Point(x: 20, y: 95))

//draw body
canvas.drawShapesWithBorders = true
canvas.drawEllipse(at: Point(x: 0, y: -98), width: 250, height: 205)

//draw left hand
canvas.fillColor = .black
canvas.drawEllipse(at: Point(x: -90, y: -30), width: 50, height: 50)

//draw right hand
canvas.drawEllipse(at: Point(x: 90, y: -30), width: 50, height: 50)

//draw left foot
canvas.drawEllipse(at: Point(x: -80, y: -180), width: 50, height: 50)

//draw right foot
canvas.drawEllipse(at: Point(x: 80, y: -180), width: 50, height: 50)


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
