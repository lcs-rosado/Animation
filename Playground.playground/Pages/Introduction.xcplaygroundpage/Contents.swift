import Cocoa
import PlaygroundSupport
import CanvasGraphics
// Set canvas size
let preferredWidth = 500
let preferredHeight = 500
// Create canvas
let canvas = Canvas(width: preferredWidth, height: preferredHeight)
// Show the canvas in the playground's live view
PlaygroundPage.current.liveView = canvas




for verticalPosition in stride(from: 0, through: 450, by: 50) {
    
    for horizontalPosition in stride(from: 0, through: 450, by: 50) {
        canvas.drawEllipse(at: Point(x: horizontalPosition + 25,
                                     y: verticalPosition + 25),
                           width: 50,
                           height: 50)
    }
            
            
    

}



