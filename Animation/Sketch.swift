import Foundation
import CanvasGraphics

class Sketch : NSObject {
    
    // NOTE: Every sketch must contain an object of type Canvas named 'canvas'
    //       Therefore, the line immediately below must always be present.
    let canvas : Canvas
    
    // Position of circle
    var x1 : Int
    var x2 : Int
    var y2 : Int
    
    // This function runs once
    override init() {
        
        // Create canvas object – specify size
        canvas = Canvas(width: 500, height: 500)
        
        // Set starting position
        x1 = random(from: 0, to: 500)
        x2 = random(from: 0, to: 500)
        y2 = random(from: 0, to: 500)
        
    }
    
    // This function runs repeatedly, forever, to create the animated effect
    func draw() {
        
        // Change position
        x1 += 1
        
        // Draw an ellipse in the middle of the canvas
        canvas.drawEllipse(at: Point(x: x1, y: 250), width: 50, height: 50)
        
    }
    
}
