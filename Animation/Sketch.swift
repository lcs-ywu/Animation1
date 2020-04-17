import Foundation
import CanvasGraphics

class Sketch : NSObject {
    
    // NOTE: Every sketch must contain an object of type Canvas named 'canvas'
    //       Therefore, the line immediately below must always be present.
    let canvas : Canvas
    
    // Position of circle
    var offset : Int
    
    // This function runs once
    override init() {
        
        // Create canvas object – specify size
        canvas = Canvas(width: 500, height: 500)
        
        // Set starting position
        offset = 250
        
        canvas.drawShapesWithBorders = false
        
    }
    
    // This function runs repeatedly, forever, to create the animated effect
    func draw() {
        
        // Change position
        offset += 1
        
        // Draw an ellipse in the middle of the canvas
        for n in 1...4{
            if n==1 {
                canvas.fillColor = .blue
                canvas.drawEllipse(at: Point(x: offset, y: canvas.height-offset), width: 50, height: 50)
            }else if n==2 {
                canvas.fillColor = .yellow
                canvas.drawEllipse(at: Point(x: canvas.width-offset, y: canvas.height-offset), width: 50, height: 50)
            }else if n==3 {
                canvas.fillColor = .green
                canvas.drawEllipse(at: Point(x: canvas.width-offset, y: offset), width: 50, height: 50)
            }else if n==4 {
                canvas.fillColor = .red
                canvas.drawEllipse(at: Point(x: offset, y: offset), width: 50, height: 50)
            }
            
        }
    }
}
