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


// Show the canvas in the playground's live view
PlaygroundPage.current.liveView = canvas
/*:
 ## Add your code
 
 Beginning on line 48, write a meaningful comment.
 
 You can remove the code on line 49 and begin writing your own code.
 
 [Documentation](http://russellgordon.ca/CanvasGraphics/Documentation/) is available.

 */
//black background
canvas.drawShapesWithFill = true
canvas.fillColor = .black
canvas.drawRectangle(at: Point(x: 0, y: 0), width: 400, height: 600)


canvas.drawShapesWithFill = false
canvas.defaultBorderWidth = 20

canvas.borderColor = Color(hue: 0, saturation: 100, brightness: 100, alpha: 50)
canvas.drawRectangle(at: Point(x: 60, y: 160), width: 120, height: 140)

canvas.borderColor = Color(hue: 0, saturation: 80, brightness: 100, alpha: 50)
canvas.drawRectangle(at: Point(x: 90, y: 130), width: 120, height: 140)

canvas.borderColor = Color(hue: 0, saturation: 70, brightness: 100, alpha: 50)
canvas.drawRectangle(at: Point(x: 120, y: 100), width: 120, height: 140)

canvas.borderColor = Color(hue: 0, saturation: 60, brightness: 100, alpha: 50)
canvas.drawRectangle(at: Point(x: 180, y: 40), width: 120, height: 140)

canvas.drawAxes(withScale: true, by: 10, color: .blue)

// Draw the text
canvas.drawText(message: <#T##String#>, at: <#T##Point#>, size: <#T##Int#>, kerning: <#T##Float#>)
