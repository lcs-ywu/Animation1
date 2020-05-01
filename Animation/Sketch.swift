import Foundation
import CanvasGraphics

// Extend the Degrees data type so that we can obtain it's value in radians
extension Degrees {
    func toRadians() -> Double {
        return Double(self) * Double.pi / 180.0
    }
}

class Sketch : NSObject {
    
    // NOTE: Every sketch must contain an object of type Canvas named 'canvas'
    //       Therefore, the line immediately below must always be present.
    let canvas : Canvas
    
    // Position of circle
    var x : Degrees
    var sinex : Double
    
    // This function runs once
    override init() {
        
        // Create canvas object – specify size
        canvas = Canvas(width: 500, height: 500)
        
        // Set starting position
        x = 0
        sinex = 0
        
    }
    
    // This function runs repeatedly, forever, to create the animated effect
    func draw() {
        
        // Change position
        x += 0.1
        sinex = Double(sin(1/50*x))
//        print(x)
//        print(sinex)
        
        // Draw an ellipse in the middle of the canvas
        canvas.drawEllipse(at: Point(x: Double(x), y: sinex*100+250), width: 5, height: 5)
        
    }
    
}
