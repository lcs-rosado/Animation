//: [Previous](@previous) / [Next](@next)
/*:
## Canvas size
 
 Set the size of your desired canvas by adjusting the constants on lines 19 and 20.
 */
let preferredWidth = 400
let preferredHeight = 400
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


//Top rectangle's
canvas.drawShapesWithFill = false
canvas.defaultBorderWidth = 20

canvas.borderColor = Color(hue: 0, saturation: 100, brightness: 100, alpha: 50)
canvas.drawRectangle(at: Point(x: 60, y: 160), width: 120, height: 140)

canvas.borderColor = Color(hue: 0, saturation: 80, brightness: 100, alpha: 50)
canvas.drawRectangle(at: Point(x: 100, y: 120), width: 120, height: 140)

canvas.borderColor = Color(hue: 0, saturation: 70, brightness: 100, alpha: 50)
canvas.drawRectangle(at: Point(x: 140, y: 80), width: 120, height: 140)

canvas.borderColor = Color(hue: 0, saturation: 60, brightness: 100, alpha: 50)
canvas.drawRectangle(at: Point(x: 180, y: 40), width: 120, height: 140)

canvas.drawAxes(withScale: true, by: 10, color: .blue)

