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
//white background
canvas.fillColor = .white
canvas.drawRectangle(at: Point(x: 0, y: 0), width: 400, height: 600)


//circle grid background
canvas.drawShapesWithFill = true
canvas.fillColor = .black

for xcircleOrigin in stride(from: 0, through: 400, by: 50) {
    for ycircleOrigin in stride(from: 0, through: 600, by: 50){
        
        canvas.drawEllipse(at: Point(x: xcircleOrigin, y: ycircleOrigin), width: 50, height: 50)
        
    }
}

canvas.fillColor = .white
canvas.drawRectangle(at: Point(x: 40, y: 180), width: 340, height: 340)

//Top rectangle's
canvas.drawShapesWithBorders = true
canvas.drawShapesWithFill = false
canvas.defaultBorderWidth = 20

canvas.borderColor = Color(hue: 0, saturation: 100, brightness: 100, alpha: 50)
canvas.drawRectangle(at: Point(x: 60, y: 200), width: 300, height: 300)

canvas.borderColor = Color(hue: 0, saturation: 70, brightness: 100, alpha: 50)
canvas.drawRectangle(at: Point(x: 80, y: 220), width: 260, height: 260)

canvas.borderColor = Color(hue: 0, saturation: 50, brightness: 100, alpha: 50)
canvas.drawRectangle(at: Point(x: 100, y: 240), width: 220, height: 220)

canvas.lineColor = .black

//draw rectangle for text
canvas.drawShapesWithFill = true
canvas.fillColor = .white
canvas.drawRectangle(at: Point(x: 110, y: 250), width: 200, height: 200)

//Draw text messages
canvas.drawText(message: "Soda Stereo", at: Point(x: 120, y: 410), size: 30, kerning: 0)
canvas.drawText(message: "Nov 15, 2007", at: Point(x: 147, y: 350), size: 20, kerning: 0)
canvas.drawText(message: "Foro Sol Mexico, CDMX", at: Point(x: 123, y: 290), size: 15, kerning: 0)

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
