import Foundation
import CanvasGraphics

class Sketch : NSObject {
    
    // NOTE: Every sketch must contain an object of type Canvas named 'canvas'
    //       Therefore, the line immediately below must always be present.
    let canvas : Canvas
    
    // Position of circle
    var x : Double
    var y : Double
    
    // This function runs once
    override init() {
        
        // Create canvas object – specify size
        canvas = Canvas(width: 500, height: 500)
        
        // Set starting position
        x = -5
        y = 0
        
    }
    
    // This function runs repeatedly, forever, to create the animated effect
    func draw() {
        
        // Change position
        x += 1
        y = -1/25*x*x+4*x
        
        // Draw an ellipse in the middle of the canvas
        for a in stride(from: -100, through: 400, by: 100) {
            canvas.drawEllipse(at: Point(x: x, y: y+Double(a)), width: 10, height: 10)
        }
        
    }
    
}
