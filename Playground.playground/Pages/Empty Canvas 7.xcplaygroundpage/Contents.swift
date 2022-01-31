import Cocoa
import PlaygroundSupport
import CanvasGraphics

// Size of canvas
let preferredWidth = 400
let preferredHeight = 600

// Create canvas
let canvas = Canvas(width: preferredWidth, height: preferredHeight, quality: .Standard)

// Show the canvas in the playground's live view
PlaygroundPage.current.liveView = canvas

// Show a grid
canvas.drawAxes(withScale: true, by: 80, color: .black)

// Draw quickly
canvas.highPerformance = true

// Set properties for drawing figure
canvas.drawShapesWithFill = false
canvas.drawShapesWithBorders = true
canvas.defaultBorderWidth = 3
canvas.borderColor = Color.red

// Turn on high performance mode
canvas.highPerformance = true

// Express the pattern of the grid
for xPosition in stride(from: 0, to: 400, by: 80) {
    for yPosition in stride(from: 0, to: 400, by: 80) {
        
        // Express the vertices of the custom figure
        var figureVertices: [Point] = []
        figureVertices.append(Point(x: xPosition + 0, y: yPosition + 0)) // A
        figureVertices.append(Point(x: xPosition + 0, y: yPosition + 50)) // B
        figureVertices.append(Point(x: xPosition + 10, y: yPosition + 50)) // C
        figureVertices.append(Point(x: xPosition + 10, y: yPosition + 20)) // D
        figureVertices.append(Point(x: xPosition + 70, y: yPosition + 80)) // E
        figureVertices.append(Point(x: xPosition + 80, y: yPosition + 70)) // F
        figureVertices.append(Point(x: xPosition + 20, y: yPosition + 10)) // G
        figureVertices.append(Point(x: xPosition + 50, y: yPosition + 10)) // H
        figureVertices.append(Point(x: xPosition + 50, y: yPosition + 0)) // I


        // Draw the custom figure
        canvas.drawCustomShape(with: figureVertices)
                
    }
}

// Turn off high performance mode
canvas.highPerformance = false
